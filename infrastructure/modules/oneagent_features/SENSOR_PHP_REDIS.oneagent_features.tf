resource "dynatrace_oneagent_features" "SENSOR_PHP_REDIS" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_REDIS"
  scope           = "environment"
}
