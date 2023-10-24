resource "dynatrace_oneagent_features" "SENSOR_PHP_STREAM" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_STREAM"
  scope           = "environment"
}
