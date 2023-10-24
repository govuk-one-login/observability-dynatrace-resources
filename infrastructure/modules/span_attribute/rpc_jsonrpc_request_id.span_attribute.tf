resource "dynatrace_span_attribute" "rpc_jsonrpc_request_id" {
  key     = "rpc.jsonrpc.request_id"
  masking = "NOT_MASKED"
}
