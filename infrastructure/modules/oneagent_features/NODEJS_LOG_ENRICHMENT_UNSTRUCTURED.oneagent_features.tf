resource "dynatrace_oneagent_features" "NODEJS_LOG_ENRICHMENT_UNSTRUCTURED" {
  enabled = false
  key     = "NODEJS_LOG_ENRICHMENT_UNSTRUCTURED"
  scope   = "environment"
}
