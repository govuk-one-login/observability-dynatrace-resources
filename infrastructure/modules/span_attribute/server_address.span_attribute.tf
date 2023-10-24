resource "dynatrace_span_attribute" "server_address" {
  key     = "server.address"
  masking = "NOT_MASKED"
}
