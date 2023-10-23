resource "dynatrace_oneagent_features" "SENSOR_PHP_OPENTELEMETRY" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PHP_OPENTELEMETRY"
  scope             = "environment"
}
