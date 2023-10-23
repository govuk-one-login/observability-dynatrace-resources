resource "dynatrace_span_attribute" "code_invoked_function" {
  key     = "code.invoked.function"
  masking = "NOT_MASKED"
}
