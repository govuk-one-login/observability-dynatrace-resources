resource "dynatrace_span_attribute" "aggregation_duration_max" {
  key     = "aggregation.duration_max"
  masking = "NOT_MASKED"
}
