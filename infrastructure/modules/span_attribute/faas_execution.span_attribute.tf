resource "dynatrace_span_attribute" "faas_execution" {
  key     = "faas.execution"
  masking = "NOT_MASKED"
}
