resource "dynatrace_oneagent_features" "SENSOR_DOTNET_MSMQ" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_MSMQ"
  scope           = "environment"
}
