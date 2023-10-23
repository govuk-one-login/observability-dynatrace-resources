resource "dynatrace_oneagent_features" "SENSOR_DOTNET_REQUEST_ATTRIBUTES" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_REQUEST_ATTRIBUTES"
  scope           = "environment"
}
