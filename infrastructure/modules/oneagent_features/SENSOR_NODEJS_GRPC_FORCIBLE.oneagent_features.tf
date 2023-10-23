resource "dynatrace_oneagent_features" "SENSOR_NODEJS_GRPC_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_GRPC_FORCIBLE"
  scope           = "environment"
}
