resource "dynatrace_span_attribute" "rpc_protocol" {
  key     = "rpc.protocol"
  masking = "NOT_MASKED"
}
