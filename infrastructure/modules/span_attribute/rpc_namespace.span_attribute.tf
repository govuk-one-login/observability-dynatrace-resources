resource "dynatrace_span_attribute" "rpc_namespace" {
  key     = "rpc.namespace"
  masking = "NOT_MASKED"
}
