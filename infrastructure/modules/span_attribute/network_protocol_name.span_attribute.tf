resource "dynatrace_span_attribute" "network_protocol_name" {
  key     = "network.protocol.name"
  masking = "NOT_MASKED"
}
