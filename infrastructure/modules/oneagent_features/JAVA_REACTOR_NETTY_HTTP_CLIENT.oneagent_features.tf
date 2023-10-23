resource "dynatrace_oneagent_features" "JAVA_REACTOR_NETTY_HTTP_CLIENT" {
  enabled = true
  key     = "JAVA_REACTOR_NETTY_HTTP_CLIENT"
  scope   = "environment"
}
