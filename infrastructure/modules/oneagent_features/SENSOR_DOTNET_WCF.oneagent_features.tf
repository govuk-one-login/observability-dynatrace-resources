resource "dynatrace_oneagent_features" "SENSOR_DOTNET_WCF" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_WCF"
  scope           = "environment"
}
