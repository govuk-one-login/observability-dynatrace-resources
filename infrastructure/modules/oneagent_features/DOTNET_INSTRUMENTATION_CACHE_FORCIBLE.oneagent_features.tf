resource "dynatrace_oneagent_features" "DOTNET_INSTRUMENTATION_CACHE_FORCIBLE" {
  enabled = true
  key     = "DOTNET_INSTRUMENTATION_CACHE_FORCIBLE"
  scope   = "environment"
}
