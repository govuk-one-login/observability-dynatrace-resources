resource "dynatrace_oneagent_features" "SENSOR_PHP_MYSQL" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_MYSQL"
  scope           = "environment"
}
