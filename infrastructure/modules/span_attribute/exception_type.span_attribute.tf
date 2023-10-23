resource "dynatrace_span_attribute" "exception_type" {
  key     = "exception.type"
  masking = "NOT_MASKED"
}
