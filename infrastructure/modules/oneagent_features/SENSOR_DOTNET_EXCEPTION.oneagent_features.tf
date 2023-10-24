resource "dynatrace_oneagent_features" "SENSOR_DOTNET_EXCEPTION" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_EXCEPTION"
  scope           = "environment"
}
