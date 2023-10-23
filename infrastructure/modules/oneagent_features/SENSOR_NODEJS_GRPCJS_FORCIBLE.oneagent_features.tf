resource "dynatrace_oneagent_features" "SENSOR_NODEJS_GRPCJS_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_GRPCJS_FORCIBLE"
  scope           = "environment"
}
