resource "dynatrace_oneagent_features" "DOTNET_HTTPTAGGING_HTTPLISTENER" {
  enabled = true
  key     = "DOTNET_HTTPTAGGING_HTTPLISTENER"
  scope   = "environment"
}
