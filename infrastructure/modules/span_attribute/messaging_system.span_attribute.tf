resource "dynatrace_span_attribute" "messaging_system" {
  key     = "messaging.system"
  masking = "NOT_MASKED"
}
