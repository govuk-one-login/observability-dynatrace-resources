resource "dynatrace_span_attribute" "net_transport" {
  key     = "net.transport"
  masking = "NOT_MASKED"
}
