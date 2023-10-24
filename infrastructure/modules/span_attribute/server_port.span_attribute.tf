resource "dynatrace_span_attribute" "server_port" {
  key     = "server.port"
  masking = "NOT_MASKED"
}
