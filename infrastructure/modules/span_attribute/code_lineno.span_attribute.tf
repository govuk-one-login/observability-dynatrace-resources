resource "dynatrace_span_attribute" "code_lineno" {
  key     = "code.lineno"
  masking = "NOT_MASKED"
}
