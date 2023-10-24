resource "dynatrace_oneagent_features" "JAVA_REDIS_LETTUCE" {
  enabled = false
  key     = "JAVA_REDIS_LETTUCE"
  scope   = "environment"
}
