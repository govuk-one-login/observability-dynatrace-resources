resource "dynatrace_oneagent_features" "SENSOR_DOTNET_IBM_MQ_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_IBM_MQ_FORCIBLE"
  scope           = "environment"
}
