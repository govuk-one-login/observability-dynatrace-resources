resource "dynatrace_log_processing" "_Built-in_db_cassandra_keyspace_column_family" {
  enabled   = true
  query     =<<-EOT
    (process.technology="cassandra" or process.technology="apache cassandra") AND (content="TRACE" OR content="DEBUG" OR content="INFO" OR content="WARN" OR content="ERROR")
  EOT
  rule_name = "[Built-in] db:cassandra:keyspace_column_family"
  processor_definition {
    rule =<<-EOT
      FIELDS_ADD(__parsed: parse(content, "DATA* 'CorruptSSTableException: Corrupted: ' LD:parts EOL"))
      | FIELDS_ADD(__parsed: COALESCE(__parsed, parse(content, "DATA* 'Completed flushing ' LD:parts ','")))
      | FIELDS_ADD(__parsed: COALESCE(__parsed, parse(content, "DATA* \"TableReader(path='\" LD:path \".db')\"")))
      | FIELDS_ADD(__parsed: COALESCE(__parsed, parse(content, "DATA* 'Compacting (' LD ') [' LD:parts SPACE")))
      | FIELDS_ADD(__parsed: COALESCE(__parsed, parse(content, "DATA* 'Deleting sstable: ' LD:parts EOF")))
      | FIELDS_ADD(__parsed: COALESCE(__parsed, parse(content, "DATA* 'Compacted' LD 'sstables to [' LD:parts ','")))
      | FIELDS_ADD(__parsed: SPLIT(__parsed, "'/'"))
      | FIELDS_ADD(table_directory: ARRAY_SELECT(__parsed, INT(ARRAY_LEN(__parsed)-2)), keyspace: ARRAY_SELECT(__parsed, INT(ARRAY_LEN(__parsed)-3)))
      | FIELDS_ADD(table: parse(table_directory, "LD:data ('-' DATA)? EOF"), keyspace)
      | FIELDS_ADD(table: COALESCE(table, parse(content, "DATA* 'Enqueuing flush of ' LD: table ':'")))
      | FIELDS_ADD(table: COALESCE(table, parse(content, "DATA* 'Writing Memtable-' LD:table '@'")))
      | FIELDS_ADD(table: COALESCE(table, parse(content, "DATA* 'Flushing largest CFS' LD \"ColumnFamily='\" LD:table \"'\"")), keyspace:COALESCE(keyspace, parse(content, "DATA* \"Flushing largest CFS(Keyspace='\" LD:keyspace \"'\"")))
      | FIELDS_RENAME('db.cassandra.table': table, 'db.cassandra.keyspace': keyspace)
      | FIELDS_REMOVE(__parsed, table_directory)
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "content": "WARN  [SharedPool-Worker-19] 2018-01-14 21:40:55,156 AbstractTracingAwareExecutorService.java:169 - Uncaught exception on thread Thread[SharedPool-Worker-19,5,main]: {}\n\tjava.lang.RuntimeException: org.apache.cassandra.io.sstable.CorruptSSTableException: Corrupted: /apps/dynatrace/data/cassandra/ruxitdb/VisitsPendingMetaData-0a69b350c8b311e7b86b4d4f00f751ac/ruxitdb-VisitsPendingMetaData-ka-1-Data.db\n\tat org.apache.cassandra.service.StorageProxy$DroppableRunnable.run(StorageProxy.java:2249) ~[apache-cassandra-2.1.18.jar:2.1.18]",
          "process.technology": "cassandra"
      })
  }
}
