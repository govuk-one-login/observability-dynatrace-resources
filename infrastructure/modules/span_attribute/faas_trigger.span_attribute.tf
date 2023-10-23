resource "dynatrace_span_attribute" "faas_trigger" {
  key     = "faas.trigger"
  masking = "NOT_MASKED"
}
