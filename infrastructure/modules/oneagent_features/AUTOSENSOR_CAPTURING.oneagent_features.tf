resource "dynatrace_oneagent_features" "AUTOSENSOR_CAPTURING" {
  enabled = true
  key     = "AUTOSENSOR_CAPTURING"
  scope   = "environment"
}
