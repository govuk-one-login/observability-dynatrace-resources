resource "dynatrace_oneagent_features" "JAVA_AMBIENT_SAMPLING_THREAD_MONITORING" {
  enabled = true
  key     = "JAVA_AMBIENT_SAMPLING_THREAD_MONITORING"
  scope   = "environment"
}
