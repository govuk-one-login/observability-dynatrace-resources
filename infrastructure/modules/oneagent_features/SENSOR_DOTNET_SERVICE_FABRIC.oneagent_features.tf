resource "dynatrace_oneagent_features" "SENSOR_DOTNET_SERVICE_FABRIC" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_SERVICE_FABRIC"
  scope           = "environment"
}
