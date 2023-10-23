resource "dynatrace_oneagent_features" "JAVA_AKKA_REMOTING" {
  enabled = true
  key     = "JAVA_AKKA_REMOTING"
  scope   = "environment"
}
