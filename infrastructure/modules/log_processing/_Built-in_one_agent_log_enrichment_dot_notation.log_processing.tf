resource "dynatrace_log_processing" "_Built-in_one_agent_log_enrichment_dot_notation" {
  enabled   = true
  query     = "trace.id AND span.id"
  rule_name = "[Built-in] one_agent:log_enrichment:dot_notation"
  processor_definition {
    rule =<<-EOT
      PARSE(content, "DATA? 'trace.id' PUNCT SPACE? PUNCT? SPACE? PUNCT? ([0-9a-fA-F]{32}|[0-9a-fA-F]{16}):trace_id")
      | PARSE(content, "DATA 'span.id' PUNCT SPACE? PUNCT? SPACE? PUNCT? [0-9a-fA-F]{16}:span_id")
    EOT
  }
  rule_testing {
    sample_log =<<-EOT
      [
       {
        "event.type": "LOG",
        "timestamp": "1647504114437",
        "loglevel": "NONE",
        "content":"2022-03-21 13:53:01 UTC [!dt trace.id=854a881de84c936780442bf092ae0698, span.id=a38cf43fa291d6c6, dt.trace_sampled=false] This is a sample log with trace/span stub"
       },
       {
        "event.type": "LOG",
        "timestamp": "1647504114437",
        "loglevel": "NONE",
        "content":"2022-03-21 13:53:01 UTC [!dt trace.id=a38af43fa291d6c6, span.id=a38cf43fa291d6c6, dt.trace_sampled=false] This is a sample log with trace/span stub"
       }
      ]
    EOT
  }
}
