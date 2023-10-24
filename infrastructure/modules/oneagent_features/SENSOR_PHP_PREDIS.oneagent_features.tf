resource "dynatrace_oneagent_features" "SENSOR_PHP_PREDIS" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PHP_PREDIS"
  scope             = "environment"
}
