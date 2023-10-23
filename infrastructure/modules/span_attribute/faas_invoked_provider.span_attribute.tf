resource "dynatrace_span_attribute" "faas_invoked_provider" {
  key     = "faas.invoked_provider"
  masking = "NOT_MASKED"
}
