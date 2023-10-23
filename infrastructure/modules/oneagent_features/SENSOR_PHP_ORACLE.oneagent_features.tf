resource "dynatrace_oneagent_features" "SENSOR_PHP_ORACLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_ORACLE"
  scope           = "environment"
}
