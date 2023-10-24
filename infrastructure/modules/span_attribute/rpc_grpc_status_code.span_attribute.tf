resource "dynatrace_span_attribute" "rpc_grpc_status_code" {
  key     = "rpc.grpc.status_code"
  masking = "NOT_MASKED"
}
