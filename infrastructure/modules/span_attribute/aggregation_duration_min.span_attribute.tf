resource "dynatrace_span_attribute" "aggregation_duration_min" {
  key     = "aggregation.duration_min"
  masking = "NOT_MASKED"
}
