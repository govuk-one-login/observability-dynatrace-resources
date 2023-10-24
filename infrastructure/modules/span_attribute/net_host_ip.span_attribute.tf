resource "dynatrace_span_attribute" "net_host_ip" {
  key     = "net.host.ip"
  masking = "NOT_MASKED"
}
