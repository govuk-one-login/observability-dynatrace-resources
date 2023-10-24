resource "dynatrace_span_attribute" "rpc_jsonrpc_error_message" {
  key     = "rpc.jsonrpc.error_message"
  masking = "NOT_MASKED"
}
