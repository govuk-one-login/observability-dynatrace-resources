resource "dynatrace_span_attribute" "rpc_system" {
  key     = "rpc.system"
  masking = "NOT_MASKED"
}
