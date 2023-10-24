resource "dynatrace_oneagent_features" "DOTNET_LOG_ENRICHMENT_SERILOG" {
  enabled = true
  key     = "DOTNET_LOG_ENRICHMENT_SERILOG"
  scope   = "environment"
}
