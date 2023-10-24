resource "dynatrace_span_attribute" "net_sock_peer_name" {
  key     = "net.sock.peer.name"
  masking = "NOT_MASKED"
}
