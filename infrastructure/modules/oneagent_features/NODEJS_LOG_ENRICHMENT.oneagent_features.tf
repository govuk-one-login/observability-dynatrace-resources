resource "dynatrace_oneagent_features" "NODEJS_LOG_ENRICHMENT" {
  enabled = false
  key     = "NODEJS_LOG_ENRICHMENT"
  scope   = "environment"
}
