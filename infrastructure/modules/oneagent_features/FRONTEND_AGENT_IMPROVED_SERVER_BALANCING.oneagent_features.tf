resource "dynatrace_oneagent_features" "FRONTEND_AGENT_IMPROVED_SERVER_BALANCING" {
  enabled = true
  key     = "FRONTEND_AGENT_IMPROVED_SERVER_BALANCING"
  scope   = "environment"
}
