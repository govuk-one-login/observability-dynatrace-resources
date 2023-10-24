resource "dynatrace_span_attribute" "net_sock_host_addr" {
  key     = "net.sock.host.addr"
  masking = "NOT_MASKED"
}
