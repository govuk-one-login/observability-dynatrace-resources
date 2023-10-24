resource "dynatrace_span_attribute" "rpc_jsonrpc_method" {
  key     = "rpc.jsonrpc.method"
  masking = "NOT_MASKED"
}
