resource "dynatrace_oneagent_features" "SENSOR_PHP_RESPONSECODE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_RESPONSECODE"
  scope           = "environment"
}
