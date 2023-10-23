resource "dynatrace_span_events" "exception_stacktrace" {
  key     = "exception.stacktrace"
  masking = "NOT_MASKED"
}
