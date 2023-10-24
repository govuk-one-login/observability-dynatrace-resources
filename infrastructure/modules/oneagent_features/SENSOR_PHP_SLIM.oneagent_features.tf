resource "dynatrace_oneagent_features" "SENSOR_PHP_SLIM" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PHP_SLIM"
  scope             = "environment"
}
