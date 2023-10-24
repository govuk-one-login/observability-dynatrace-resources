resource "dynatrace_span_attribute" "code_function" {
  key     = "code.function"
  masking = "NOT_MASKED"
}
