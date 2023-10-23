resource "dynatrace_oneagent_features" "SENSOR_DOTNET_ADO" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_ADO"
  scope           = "environment"
}
