resource "dynatrace_oneagent_features" "SENSOR_PHP_GRPC" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PHP_GRPC"
  scope             = "environment"
}
