resource "dynatrace_oneagent_features" "SENSOR_JAVA_GRPC" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_GRPC"
  scope           = "environment"
}
