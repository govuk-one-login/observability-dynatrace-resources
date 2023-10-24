resource "dynatrace_log_processing" "_Built-in_db_elasticsearch_default_log" {
  enabled   = true
  query     =<<-EOT
    (process.technology="elastic_search" or process.technology="elasticsearch") and content!="index.search.slowlog*" and content!="index.indexing.slowlog*"
  EOT
  rule_name = "[Built-in] db:elasticsearch:default_log"
  processor_definition {
    rule =<<-EOT
      PARSE(content, "'[' TIMESTAMP('yyyy-MM-ddTHH:mm:ss,SSS'):timestamp ']' PUNCT?
      SPACE? '[' ('DEPRECATION'| (UPPER:loglevel SPACE*)) ']' PUNCT?
      SPACE? '[' LD:'log.logger' SPACE* ']' PUNCT?
      SPACE? '[' LD:'db.elasticsearch.node' SPACE* ']'
      DATA")
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "content": "[2022-02-21T19:24:02,533][INFO ][o.e.c.m.MetadataIndexTemplateService] [i-0e368ef320d5bfb4f] adding template [index_template_snyk_app_vulnerability] for index patterns [snyk_app_vulnerability*]",
          "process.technology": "elastic_search"
      })
  }
}
