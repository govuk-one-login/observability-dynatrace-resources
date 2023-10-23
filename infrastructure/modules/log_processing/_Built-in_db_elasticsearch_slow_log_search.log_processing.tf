resource "dynatrace_log_processing" "_Built-in_db_elasticsearch_slow_log_search" {
  enabled   = true
  query     =<<-EOT
    (process.technology="elastic_search" or process.technology="elasticsearch") and content="index.search.slowlog*"
  EOT
  rule_name = "[Built-in] db:elasticsearch:slow_log_search"
  processor_definition {
    rule =<<-EOT
      PARSE(content, "'[' TIMESTAMP('yyyy-MM-ddTHH:mm:ss,SSS'):timestamp ']' PUNCT?
      SPACE? '[' UPPER:loglevel SPACE* ']' PUNCT?
      SPACE? '[index.search.slowlog.' LD:'db.operation' ']' PUNCT?
      SPACE? '[' LD*:'db.elasticsearch.node' ']' PUNCT?
      (SPACE? '{' LD '}')? //metadata, dt.trace_id
      SPACE? '[' LD?:'db.elasticsearch.index_name' ']' PUNCT?
      SPACE? '[' INT?:'db.elasticsearch.affected_shard' ']' PUNCT?
      SPACE? 'took[' LD* ']' PUNCT?
      SPACE? 'took_millis[' INT:'db.elasticsearch.duration' ']' PUNCT?
      (SPACE? 'total_hits[' INT SPACE? 'hits'? ']' PUNCT?)
      SPACE? 'types[' LD* ']' PUNCT?
      SPACE? 'stats[' LD* ']'  PUNCT?
      SPACE? 'search_type[' LD*:'db.elasticsearch.search_type' ']'  PUNCT?
      SPACE? 'total_shards[' INT?:'db.elasticsearch.total_shards' ']'  PUNCT?
      (SPACE? 'source[' LD* 'size' SPACE? PUNCT SPACE? INT:'db.elasticsearch.query_size')?
      DATA")
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "content": "[2022-02-14T15:39:02,236][TRACE][index.search.slowlog.fetch] [i-09936f6f0e61c3f22] [log_record-global-daily35-d2022.01.31][11] took[100ms], took_millis[100], total_hits[-1], types[log_record], stats[], search_type[QUERY_THEN_FETCH], total_shards[51], source[{\"size\":1000,\"timeout\":\"30000000000nanos\",\"query\":{\"bool\":{\"filter\":[{\"term\":{\"tenantId\":{\"value\":\"qra64722\",\"boost\":1.0}}},{\"range\":{\"timestamp\":{\"from\":1643618907448,\"to\":1643622025852,\"include_lower\":true,\"include_upper\":true,\"format\":\"epoch_millis\",\"boost\":1.0}}},{\"term\":{\"status\":{\"value\":\"info\",\"boost\":1.0}}}],\"adjust_pure_negative\":true,\"boost\":1.0}},\"version\":false,\"seq_no_primary_term\":false,\"sort\":[{\"timestamp\":{\"order\":\"desc\"}},{\"logSeqNumber\":{\"order\":\"desc\"}}],\"track_total_hits\":2147483647}], id[],",
          "process.technology": "elastic_search"
      })
  }
}
