resource "dynatrace_oneagent_features" "SENSOR_PHP_POSTGRESQL" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_POSTGRESQL"
  scope           = "environment"
}
