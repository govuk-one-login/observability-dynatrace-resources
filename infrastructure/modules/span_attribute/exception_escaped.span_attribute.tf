resource "dynatrace_span_attribute" "exception_escaped" {
  key     = "exception.escaped"
  masking = "NOT_MASKED"
}
