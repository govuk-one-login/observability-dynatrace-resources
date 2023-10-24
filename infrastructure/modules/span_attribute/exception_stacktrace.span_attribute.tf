resource "dynatrace_span_attribute" "exception_stacktrace" {
  key     = "exception.stacktrace"
  masking = "NOT_MASKED"
}
