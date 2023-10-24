resource "dynatrace_oneagent_features" "SENSOR_PHP_CURL" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_CURL"
  scope           = "environment"
}
