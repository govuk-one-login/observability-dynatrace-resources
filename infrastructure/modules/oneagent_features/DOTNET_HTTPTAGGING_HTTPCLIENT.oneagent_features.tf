resource "dynatrace_oneagent_features" "DOTNET_HTTPTAGGING_HTTPCLIENT" {
  enabled = true
  key     = "DOTNET_HTTPTAGGING_HTTPCLIENT"
  scope   = "environment"
}
