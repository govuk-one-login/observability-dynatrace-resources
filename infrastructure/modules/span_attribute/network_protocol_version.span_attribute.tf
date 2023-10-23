resource "dynatrace_span_attribute" "network_protocol_version" {
  key     = "network.protocol.version"
  masking = "NOT_MASKED"
}
