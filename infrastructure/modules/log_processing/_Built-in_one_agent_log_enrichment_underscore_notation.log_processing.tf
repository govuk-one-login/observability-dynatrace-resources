resource "dynatrace_log_processing" "_Built-in_one_agent_log_enrichment_underscore_notation" {
  enabled   = true
  query     = "(trace_id AND span_id) or (dt.trace_id AND dt.span_id)"
  rule_name = "[Built-in] one_agent:log_enrichment:underscore_notation"
  processor_definition {
    rule =<<-EOT
      PARSE(content, "DATA? 'trace_id' PUNCT SPACE? PUNCT? SPACE? PUNCT? ([0-9a-fA-F]{32}|[0-9a-fA-F]{16}):trace_id")
       | PARSE(content, "DATA 'span_id' PUNCT SPACE? PUNCT? SPACE? PUNCT? [0-9a-fA-F]{16}:span_id")
    EOT
  }
  rule_testing {
    sample_log =<<-EOT
      [
       {
        "event.type": "LOG",
        "timestamp": "1647504114437",
        "loglevel": "NONE",
        "content":"2022-03-21 13:53:01 UTC [!dt trace_id=854a881de84c936780442bf092ae0698, span_id=a38cf43fa291d6c6, dt.trace_sampled=false] This is a sample log with trace/span stub"
       },
       {
        "event.type": "LOG",
        "timestamp": "1647504114437",
        "loglevel": "NONE",
        "content":"2022-03-21 13:53:01 UTC [!dt trace_id=a38af43fa291d6c6, span_id=a38cf43fa291d6c6, dt.trace_sampled=false] This is a sample log with trace/span stub"
       },
      {
        "event.type": "LOG",
        "timestamp": "1647504114437",
        "loglevel": "NONE",
        "content":"2022-03-21 13:53:01 UTC [!dt dt.trace_id=c9084f2ed39f4eacd13e3ecaa8a3a132, dt.span_id=a38cf43fa291d6c6, dt.trace_sampled=false] This is a sample log with trace/span DT stub"
       },
       {
        "event.type": "LOG",
        "timestamp": "1647504114437",
        "loglevel": "NONE",
        "content":"2022-03-21 13:53:01 UTC [!dt dt.trace_id=a38af43fa291d6c6, dt.span_id=a38cf43fa291d6c6, dt.trace_sampled=false] This is a sample log with trace/span DT stub"
       }
      ]
    EOT
  }
}
