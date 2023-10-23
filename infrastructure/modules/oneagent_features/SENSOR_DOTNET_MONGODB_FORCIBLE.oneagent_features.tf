resource "dynatrace_oneagent_features" "SENSOR_DOTNET_MONGODB_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_MONGODB_FORCIBLE"
  scope           = "environment"
}
