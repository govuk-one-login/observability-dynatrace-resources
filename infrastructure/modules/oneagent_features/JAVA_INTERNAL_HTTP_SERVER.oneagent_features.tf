resource "dynatrace_oneagent_features" "JAVA_INTERNAL_HTTP_SERVER" {
  enabled = true
  key     = "JAVA_INTERNAL_HTTP_SERVER"
  scope   = "environment"
}
