resource "dynatrace_span_attribute" "net_host_name" {
  key     = "net.host.name"
  masking = "NOT_MASKED"
}
