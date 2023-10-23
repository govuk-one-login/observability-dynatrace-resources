resource "dynatrace_oneagent_features" "JAVA_METRIC_EXTENSIONS" {
  enabled = false
  key     = "JAVA_METRIC_EXTENSIONS"
  scope   = "environment"
}
