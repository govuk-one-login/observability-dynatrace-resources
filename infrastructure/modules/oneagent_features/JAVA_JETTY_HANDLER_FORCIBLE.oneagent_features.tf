resource "dynatrace_oneagent_features" "JAVA_JETTY_HANDLER_FORCIBLE" {
  enabled = true
  key     = "JAVA_JETTY_HANDLER_FORCIBLE"
  scope   = "environment"
}
