resource "dynatrace_span_attribute" "exception_message" {
  key     = "exception.message"
  masking = "NOT_MASKED"
}
