resource "dynatrace_oneagent_features" "SENSOR_PHP_THREAD" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_THREAD"
  scope           = "environment"
}
