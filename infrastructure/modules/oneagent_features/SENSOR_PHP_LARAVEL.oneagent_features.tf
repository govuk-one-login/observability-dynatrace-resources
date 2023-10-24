resource "dynatrace_oneagent_features" "SENSOR_PHP_LARAVEL" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PHP_LARAVEL"
  scope             = "environment"
}
