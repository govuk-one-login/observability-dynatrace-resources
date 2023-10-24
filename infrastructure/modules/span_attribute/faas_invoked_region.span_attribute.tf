resource "dynatrace_span_attribute" "faas_invoked_region" {
  key     = "faas.invoked_region"
  masking = "NOT_MASKED"
}
