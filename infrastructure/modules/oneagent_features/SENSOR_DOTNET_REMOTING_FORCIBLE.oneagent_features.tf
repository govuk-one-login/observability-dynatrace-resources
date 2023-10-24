resource "dynatrace_oneagent_features" "SENSOR_DOTNET_REMOTING_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_REMOTING_FORCIBLE"
  scope           = "environment"
}
