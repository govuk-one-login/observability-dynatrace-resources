resource "dynatrace_span_events" "exception_escaped" {
  key     = "exception.escaped"
  masking = "NOT_MASKED"
}
