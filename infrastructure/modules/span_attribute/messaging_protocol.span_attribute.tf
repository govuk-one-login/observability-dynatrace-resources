resource "dynatrace_span_attribute" "messaging_protocol" {
  key     = "messaging.protocol"
  masking = "NOT_MASKED"
}
