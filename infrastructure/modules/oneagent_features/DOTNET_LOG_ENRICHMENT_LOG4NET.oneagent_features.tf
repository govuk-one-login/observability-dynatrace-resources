resource "dynatrace_oneagent_features" "DOTNET_LOG_ENRICHMENT_LOG4NET" {
  enabled = true
  key     = "DOTNET_LOG_ENRICHMENT_LOG4NET"
  scope   = "environment"
}
