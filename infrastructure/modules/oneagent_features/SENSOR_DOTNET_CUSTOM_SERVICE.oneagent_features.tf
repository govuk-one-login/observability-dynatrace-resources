resource "dynatrace_oneagent_features" "SENSOR_DOTNET_CUSTOM_SERVICE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_CUSTOM_SERVICE"
  scope           = "environment"
}
