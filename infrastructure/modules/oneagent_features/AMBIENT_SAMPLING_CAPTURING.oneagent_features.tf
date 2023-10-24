resource "dynatrace_oneagent_features" "AMBIENT_SAMPLING_CAPTURING" {
  enabled = true
  key     = "AMBIENT_SAMPLING_CAPTURING"
  scope   = "environment"
}
