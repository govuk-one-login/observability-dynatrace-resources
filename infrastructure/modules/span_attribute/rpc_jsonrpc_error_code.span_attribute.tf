resource "dynatrace_span_attribute" "rpc_jsonrpc_error_code" {
  key     = "rpc.jsonrpc.error_code"
  masking = "NOT_MASKED"
}
