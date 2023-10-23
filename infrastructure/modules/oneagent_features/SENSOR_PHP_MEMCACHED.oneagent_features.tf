resource "dynatrace_oneagent_features" "SENSOR_PHP_MEMCACHED" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_MEMCACHED"
  scope           = "environment"
}
