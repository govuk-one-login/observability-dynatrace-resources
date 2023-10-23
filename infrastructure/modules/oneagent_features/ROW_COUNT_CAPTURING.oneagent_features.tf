resource "dynatrace_oneagent_features" "ROW_COUNT_CAPTURING" {
  enabled = true
  key     = "ROW_COUNT_CAPTURING"
  scope   = "environment"
}
