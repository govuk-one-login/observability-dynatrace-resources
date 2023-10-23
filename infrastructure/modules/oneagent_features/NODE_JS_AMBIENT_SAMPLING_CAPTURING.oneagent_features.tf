resource "dynatrace_oneagent_features" "NODE_JS_AMBIENT_SAMPLING_CAPTURING" {
  enabled = false
  key     = "NODE_JS_AMBIENT_SAMPLING_CAPTURING"
  scope   = "environment"
}
