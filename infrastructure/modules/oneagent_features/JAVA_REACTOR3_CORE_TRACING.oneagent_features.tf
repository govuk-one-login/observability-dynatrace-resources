resource "dynatrace_oneagent_features" "JAVA_REACTOR3_CORE_TRACING" {
  enabled = true
  key     = "JAVA_REACTOR3_CORE_TRACING"
  scope   = "environment"
}
