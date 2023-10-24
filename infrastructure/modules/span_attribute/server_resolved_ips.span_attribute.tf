resource "dynatrace_span_attribute" "server_resolved_ips" {
  key     = "server.resolved_ips"
  masking = "NOT_MASKED"
}
