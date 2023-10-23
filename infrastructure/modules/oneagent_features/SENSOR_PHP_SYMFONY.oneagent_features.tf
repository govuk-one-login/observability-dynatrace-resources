resource "dynatrace_oneagent_features" "SENSOR_PHP_SYMFONY" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PHP_SYMFONY"
  scope             = "environment"
}
