resource "dynatrace_span_attribute" "aggregation_parallel" {
  key     = "aggregation.parallel"
  masking = "NOT_MASKED"
}
