resource "dynatrace_span_attribute" "aggregation_exec_count" {
  key     = "aggregation.exec_count"
  masking = "NOT_MASKED"
}
