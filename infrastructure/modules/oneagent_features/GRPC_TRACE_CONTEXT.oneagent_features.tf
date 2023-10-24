resource "dynatrace_oneagent_features" "GRPC_TRACE_CONTEXT" {
  enabled = false
  key     = "GRPC_TRACE_CONTEXT"
  scope   = "environment"
}
