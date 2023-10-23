resource "dynatrace_oneagent_features" "SENSOR_GO_GRPC_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_GO_GRPC_FORCIBLE"
  scope           = "environment"
}
