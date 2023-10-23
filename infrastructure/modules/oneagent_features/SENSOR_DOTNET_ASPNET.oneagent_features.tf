resource "dynatrace_oneagent_features" "SENSOR_DOTNET_ASPNET" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_ASPNET"
  scope           = "environment"
}
