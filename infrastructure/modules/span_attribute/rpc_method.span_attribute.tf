resource "dynatrace_span_attribute" "rpc_method" {
  key     = "rpc.method"
  masking = "NOT_MASKED"
}
