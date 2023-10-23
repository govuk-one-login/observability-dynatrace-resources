resource "dynatrace_log_processing" "_Built-in_db_cassandra_dropped_messages" {
  enabled   = true
  query     =<<-EOT
    (process.technology="cassandra" or process.technology="apache cassandra") AND content="messages were dropped"
  EOT
  rule_name = "[Built-in] db:cassandra:dropped_messages"
  processor_definition {
    rule = "PARSE(content, \"LD ' - ' LD* (NSPACE:'db.cassandra.message.type' ' messages were dropped ' LD ':') SPACE INT:'db.cassandra.message.dropped.internal' LD INT:'db.cassandra.message.dropped.crossnode' LD INT:'db.cassandra.message.dropped.internal.latency_millis' LD INT:'db.cassandra.message.dropped.crossnode.latency_millis' LD*\")"
  }
  rule_testing {
    sample_log = jsonencode({
          "content": "INFO [ScheduledTasks:1] 2022-02-25 08:14:44,166 MessagingService.java:1246 - RANGE_SLICE messages were dropped in last 5000 ms: 0 internal and 2 cross node. Mean internal dropped latency: 0 ms and Mean cross-node dropped latency: 10299 ms",
          "process.technology": "cassandra"
      })
  }
}
