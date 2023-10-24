resource "dynatrace_span_attribute" "rpc_service" {
  key     = "rpc.service"
  masking = "NOT_MASKED"
}
