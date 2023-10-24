resource "dynatrace_log_processing" "_Built-in_one_agent_log_enrichment_trace_sampled" {
  enabled   = true
  query     = "trace_sampled or dt.trace_sampled"
  rule_name = "[Built-in] one_agent:log_enrichment:trace_sampled"
  processor_definition {
    rule = "PARSE(content, \"DATA? 'trace_sampled' PUNCT SPACE? PUNCT? SPACE? PUNCT? BOOLEAN:trace_sampled\")"
  }
  rule_testing {
    sample_log =<<-EOT
      [
       {
        "event.type": "LOG",
        "timestamp": "1647504114437",
        "loglevel": "NONE",
        "content":"2022-03-21 13:53:01 UTC [!dt dt.trace_sampled=true] This is a sample log with trace_sampled DT stub"
      },
      {
        "content":"2022-04-07 15:44:02,879 [QuartzScheduler_Worker-4] INFO PendingEventSenderJob : trace_sampled: true, trace_id: 854a881de84c936780442bf092ae0698, span_id: c98cf92202a4e460 com.dynatrace.spine.eventbus.client.support.retry.PendingEventSenderJob job started."
      }
      ]
    EOT
  }
}
