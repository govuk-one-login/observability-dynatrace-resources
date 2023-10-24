resource "dynatrace_oneagent_features" "JAVA_ALLOCATION_PROFILING_FORCIBLE" {
  enabled = true
  key     = "JAVA_ALLOCATION_PROFILING_FORCIBLE"
  scope   = "environment"
}
