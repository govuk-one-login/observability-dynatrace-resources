resource "dynatrace_span_attribute" "aggregation_count" {
  key     = "aggregation.count"
  masking = "NOT_MASKED"
}
