resource "dynatrace_span_attribute" "net_peer_name" {
  key     = "net.peer.name"
  masking = "NOT_MASKED"
}
