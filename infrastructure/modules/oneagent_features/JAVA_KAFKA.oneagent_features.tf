resource "dynatrace_oneagent_features" "JAVA_KAFKA" {
  enabled = true
  key     = "JAVA_KAFKA"
  scope   = "environment"
}
