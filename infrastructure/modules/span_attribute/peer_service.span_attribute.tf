resource "dynatrace_span_attribute" "peer_service" {
  key     = "peer.service"
  masking = "NOT_MASKED"
}
