resource "dynatrace_span_attribute" "network_transport" {
  key     = "network.transport"
  masking = "NOT_MASKED"
}
