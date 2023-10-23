resource "dynatrace_span_attribute" "rpc_framework" {
  key     = "rpc.framework"
  masking = "NOT_MASKED"
}
