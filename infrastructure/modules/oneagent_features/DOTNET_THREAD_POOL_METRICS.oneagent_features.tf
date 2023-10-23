resource "dynatrace_oneagent_features" "DOTNET_THREAD_POOL_METRICS" {
  enabled = true
  key     = "DOTNET_THREAD_POOL_METRICS"
  scope   = "environment"
}
