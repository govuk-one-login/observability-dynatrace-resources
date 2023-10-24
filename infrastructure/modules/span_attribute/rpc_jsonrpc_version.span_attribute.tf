resource "dynatrace_span_attribute" "rpc_jsonrpc_version" {
  key     = "rpc.jsonrpc.version"
  masking = "NOT_MASKED"
}
