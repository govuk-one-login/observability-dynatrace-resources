resource "dynatrace_oneagent_features" "DOTNET_ASPNET_HTTPSELFHOSTSERVER" {
  enabled = true
  key     = "DOTNET_ASPNET_HTTPSELFHOSTSERVER"
  scope   = "environment"
}
