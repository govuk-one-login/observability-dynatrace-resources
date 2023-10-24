resource "dynatrace_span_attribute" "aggregation_parallel_execution" {
  key     = "aggregation.parallel_execution"
  masking = "NOT_MASKED"
}
