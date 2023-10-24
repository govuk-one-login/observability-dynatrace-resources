resource "dynatrace_oneagent_features" "IIS_MODULE_INSIGHTS" {
  enabled = true
  key     = "IIS_MODULE_INSIGHTS"
  scope   = "environment"
}
