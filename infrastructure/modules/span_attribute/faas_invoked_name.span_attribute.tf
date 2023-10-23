resource "dynatrace_span_attribute" "faas_invoked_name" {
  key     = "faas.invoked_name"
  masking = "NOT_MASKED"
}
