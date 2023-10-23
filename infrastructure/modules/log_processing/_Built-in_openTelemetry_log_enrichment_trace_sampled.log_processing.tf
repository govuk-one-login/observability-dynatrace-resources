resource "dynatrace_log_processing" "_Built-in_openTelemetry_log_enrichment_trace_sampled" {
  enabled   = true
  query     =<<-EOT
    trace_flags="0*" or trace_flags="1*" or trace_flags="2*" or trace_flags="3*" or trace_flags="4*" or trace_flags="5*" or trace_flags="6*" or trace_flags="7*" or trace_flags="8*" or trace_flags="9*"
  EOT
  rule_name = "[Built-in] openTelemetry:log_enrichment:trace_sampled"
  processor_definition {
    rule =<<-EOT
      USING(INOUT trace_flags)
      | FIELDS_ADD(f:parse(trace_flags, "HEXINT:hex"))
      | FIELDS_ADD("trace_sampled": (f & 1==1)) 
      | FIELDS_REMOVE(f, trace_flags)
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "content": "2022-02-17 05:58:31 UTC [2, -342723887] Started analysis OnDemandAnalysisRequest{analyzerId=com.compuware.apm.ondemandanalysis.analyzer.strategy.FDISimpleTreeAnalyzer, analysisStartTimeInMillis=1645076400000, analysisEndTimeInMillis=1645077420000, indexKeys=[APPLICATION+9BDE0A20D897F97B], desiredDataQuantity=15000, filters=[ApplicationCallDataFilter{hasHttpError=false}, CallIdentifierFilter{callType=APPLICATION, serviceTypes=null, methodGroupIdentifiers=[], excludeMethodGroupIdentifiers=null, methodIdentifiers=[], instanceIdentifiers=[], methodNameSearchString=null}]}",
          "span_id": "8f20d10d71ae12f4",
          "trace_flags": "01",
          "trace_id": "aac3e95e0bde67514059e430a9b4e507"
      })
  }
}
