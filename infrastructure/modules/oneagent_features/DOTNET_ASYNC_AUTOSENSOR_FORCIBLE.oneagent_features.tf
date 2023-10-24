resource "dynatrace_oneagent_features" "DOTNET_ASYNC_AUTOSENSOR_FORCIBLE" {
  enabled = true
  key     = "DOTNET_ASYNC_AUTOSENSOR_FORCIBLE"
  scope   = "environment"
}
