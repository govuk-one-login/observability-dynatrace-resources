resource "dynatrace_oneagent_features" "DOTNET_ASPNETCORE_UEM" {
  enabled = false
  key     = "DOTNET_ASPNETCORE_UEM"
  scope   = "environment"
}
