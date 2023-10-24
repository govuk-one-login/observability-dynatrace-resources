resource "dynatrace_oneagent_features" "SENSOR_PHP_RABBITMQ" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PHP_RABBITMQ"
  scope             = "environment"
}
