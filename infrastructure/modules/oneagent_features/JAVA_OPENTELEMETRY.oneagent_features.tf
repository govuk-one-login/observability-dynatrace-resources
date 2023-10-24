resource "dynatrace_oneagent_features" "JAVA_OPENTELEMETRY" {
  enabled = true
  key     = "JAVA_OPENTELEMETRY"
  scope   = "environment"
}
