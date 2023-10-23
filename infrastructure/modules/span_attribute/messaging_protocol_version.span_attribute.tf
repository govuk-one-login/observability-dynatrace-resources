resource "dynatrace_span_attribute" "messaging_protocol_version" {
  key     = "messaging.protocol_version"
  masking = "NOT_MASKED"
}
