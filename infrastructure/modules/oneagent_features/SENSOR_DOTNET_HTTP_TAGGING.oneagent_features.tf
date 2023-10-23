resource "dynatrace_oneagent_features" "SENSOR_DOTNET_HTTP_TAGGING" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_HTTP_TAGGING"
  scope           = "environment"
}
