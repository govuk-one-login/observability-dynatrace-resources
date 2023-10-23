resource "dynatrace_span_attribute" "faas_coldstart" {
  key     = "faas.coldstart"
  masking = "NOT_MASKED"
}
