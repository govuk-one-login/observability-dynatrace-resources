resource "dynatrace_oneagent_features" "SENSOR_DOTNET_AZURE_SERVICE_BUS_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_AZURE_SERVICE_BUS_FORCIBLE"
  scope           = "environment"
}
