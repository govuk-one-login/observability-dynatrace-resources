resource "dynatrace_oneagent_features" "HTTP_TRACE_CONTEXT" {
  enabled = true
  key     = "HTTP_TRACE_CONTEXT"
  scope   = "environment"
}
