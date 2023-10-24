resource "dynatrace_oneagent_features" "NODEJS_OPENTELEMETRY" {
  enabled = false
  key     = "NODEJS_OPENTELEMETRY"
  scope   = "environment"
}
