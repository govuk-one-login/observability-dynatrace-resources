resource "dynatrace_span_events" "exception_message" {
  key     = "exception.message"
  masking = "NOT_MASKED"
}
