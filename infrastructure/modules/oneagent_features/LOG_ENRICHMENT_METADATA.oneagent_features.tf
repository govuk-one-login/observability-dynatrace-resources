resource "dynatrace_oneagent_features" "LOG_ENRICHMENT_METADATA" {
  enabled = false
  key     = "LOG_ENRICHMENT_METADATA"
  scope   = "environment"
}
