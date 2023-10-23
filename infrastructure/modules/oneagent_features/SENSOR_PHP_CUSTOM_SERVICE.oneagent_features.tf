resource "dynatrace_oneagent_features" "SENSOR_PHP_CUSTOM_SERVICE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_CUSTOM_SERVICE"
  scope           = "environment"
}
