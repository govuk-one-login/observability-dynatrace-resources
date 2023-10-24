resource "dynatrace_span_attribute" "aggregation_exception_count" {
  key     = "aggregation.exception_count"
  masking = "NOT_MASKED"
}
