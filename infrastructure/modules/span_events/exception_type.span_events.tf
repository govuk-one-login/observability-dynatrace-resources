resource "dynatrace_span_events" "exception_type" {
  key     = "exception.type"
  masking = "NOT_MASKED"
}
