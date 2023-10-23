resource "dynatrace_oneagent_features" "JAVA_APACHE_HTTP_CLIENT" {
  enabled = true
  key     = "JAVA_APACHE_HTTP_CLIENT_5"
  scope   = "environment"
}
