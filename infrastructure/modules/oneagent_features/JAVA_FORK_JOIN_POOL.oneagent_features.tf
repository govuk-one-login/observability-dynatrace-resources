resource "dynatrace_oneagent_features" "JAVA_FORK_JOIN_POOL" {
  enabled = false
  key     = "JAVA_FORK_JOIN_POOL"
  scope   = "environment"
}
