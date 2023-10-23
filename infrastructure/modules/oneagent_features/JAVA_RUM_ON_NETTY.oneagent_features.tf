resource "dynatrace_oneagent_features" "JAVA_RUM_ON_NETTY" {
  enabled = false
  key     = "JAVA_RUM_ON_NETTY"
  scope   = "environment"
}
