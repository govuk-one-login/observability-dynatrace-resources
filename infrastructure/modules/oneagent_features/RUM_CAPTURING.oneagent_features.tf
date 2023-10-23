resource "dynatrace_oneagent_features" "RUM_CAPTURING" {
  enabled = true
  key     = "RUM_CAPTURING"
  scope   = "environment"
}
