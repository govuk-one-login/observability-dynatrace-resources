resource "dynatrace_oneagent_features" "SENSOR_PHP_EXCEPTION" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_EXCEPTION"
  scope           = "environment"
}
