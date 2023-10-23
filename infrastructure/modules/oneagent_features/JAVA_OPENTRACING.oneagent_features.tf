resource "dynatrace_oneagent_features" "JAVA_OPENTRACING" {
  enabled = true
  key     = "JAVA_OPENTRACING"
  scope   = "environment"
}
