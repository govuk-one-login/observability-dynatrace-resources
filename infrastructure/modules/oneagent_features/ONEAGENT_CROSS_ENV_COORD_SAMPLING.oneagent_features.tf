resource "dynatrace_oneagent_features" "ONEAGENT_CROSS_ENV_COORD_SAMPLING" {
  enabled = false
  key     = "ONEAGENT_CROSS_ENV_COORD_SAMPLING"
  scope   = "environment"
}
