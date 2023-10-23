resource "dynatrace_span_attribute" "net_host_port" {
  key     = "net.host.port"
  masking = "NOT_MASKED"
}
