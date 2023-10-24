resource "dynatrace_span_attribute" "net_peer_port" {
  key     = "net.peer.port"
  masking = "NOT_MASKED"
}
