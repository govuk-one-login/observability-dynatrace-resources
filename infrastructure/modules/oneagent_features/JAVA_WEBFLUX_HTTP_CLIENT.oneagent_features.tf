resource "dynatrace_oneagent_features" "JAVA_WEBFLUX_HTTP_CLIENT" {
  enabled = true
  key     = "JAVA_WEBFLUX_HTTP_CLIENT"
  scope   = "environment"
}
