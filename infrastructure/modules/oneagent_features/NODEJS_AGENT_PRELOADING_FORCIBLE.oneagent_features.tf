resource "dynatrace_oneagent_features" "NODEJS_AGENT_PRELOADING_FORCIBLE" {
  enabled = true
  key     = "NODEJS_AGENT_PRELOADING_FORCIBLE"
  scope   = "environment"
}
