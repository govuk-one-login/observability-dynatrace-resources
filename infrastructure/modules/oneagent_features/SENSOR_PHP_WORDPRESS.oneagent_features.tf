resource "dynatrace_oneagent_features" "SENSOR_PHP_WORDPRESS" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PHP_WORDPRESS"
  scope             = "environment"
}
