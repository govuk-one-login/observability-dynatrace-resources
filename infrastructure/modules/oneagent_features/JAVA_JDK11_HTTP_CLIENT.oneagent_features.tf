resource "dynatrace_oneagent_features" "JAVA_JDK11_HTTP_CLIENT" {
  enabled = true
  key     = "JAVA_JDK11_HTTP_CLIENT"
  scope   = "environment"
}
