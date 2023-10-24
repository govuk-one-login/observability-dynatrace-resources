resource "dynatrace_oneagent_features" "SENSOR_DOTNET_AZUREFUNCTIONS_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_AZUREFUNCTIONS_FORCIBLE"
  scope           = "environment"
}
