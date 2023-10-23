resource "dynatrace_log_processing" "_Built-in_db_elasticsearch_slow_log_index" {
  enabled   = true
  query     =<<-EOT
    (process.technology="elastic_search" or process.technology="elasticsearch") and content="index.indexing.slowlog*"
  EOT
  rule_name = "[Built-in] db:elasticsearch:slow_log_index"
  processor_definition {
    rule =<<-EOT
      PARSE(content, "'[' TIMESTAMP('yyyy-MM-ddTHH:mm:ss,SSS'):timestamp ']' PUNCT?
      SPACE? '[' UPPER:loglevel SPACE* ']' PUNCT?
      SPACE? '[index.indexing.slowlog.' LD:'db.operation' ']' PUNCT?
      SPACE? '[' LD:'db.elasticsearch.node' ']' PUNCT?
      (SPACE? '{' LD '}')? //metadata, dt.trace_id
      SPACE? '[' LD?:'db.elasticsearch.index_name' ']' PUNCT?
      SPACE? 'took[' LD ']' PUNCT?
      SPACE? 'took_millis[' INT:'db.elasticsearch.duration' ']' PUNCT?
      DATA")
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "content": "[2017-09-10T12:07:26,683][WARN ][index.indexing.slowlog.index] [GOgO9TD] [testindex-slowlogs/yNbyYk1ARSW_hd0YRh6J0A] took[142.3micros], took_millis[0], type[product], id[105], routing[] , source[{\"price\":9925,\"name\":\"Nariko\"}]",
          "process.technology": "elastic_search"
      })
  }
}
