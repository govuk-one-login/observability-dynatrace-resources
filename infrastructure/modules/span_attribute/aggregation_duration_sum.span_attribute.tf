resource "dynatrace_span_attribute" "aggregation_duration_sum" {
  key     = "aggregation.duration_sum"
  masking = "NOT_MASKED"
}
