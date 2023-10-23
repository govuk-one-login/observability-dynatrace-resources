resource "dynatrace_oneagent_features" "JAVA_UEM_INSTRUMENTATION" {
  enabled = false
  key     = "JAVA_UEM_INSTRUMENTATION"
  scope   = "environment"
}
