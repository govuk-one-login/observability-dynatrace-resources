resource "dynatrace_oneagent_features" "SENSOR_DOTNET_AMQP_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_AMQP_FORCIBLE"
  scope           = "environment"
}
