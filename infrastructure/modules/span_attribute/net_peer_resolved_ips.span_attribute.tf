resource "dynatrace_span_attribute" "net_peer_resolved_ips" {
  key     = "net.peer.resolved.ips"
  masking = "NOT_MASKED"
}
