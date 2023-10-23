resource "dynatrace_oneagent_features" "DOTNET_LOG_ENRICHMENT_MSEXTENSIONLOGGING" {
  enabled = true
  key     = "DOTNET_LOG_ENRICHMENT_MSEXTENSIONLOGGING"
  scope   = "environment"
}
