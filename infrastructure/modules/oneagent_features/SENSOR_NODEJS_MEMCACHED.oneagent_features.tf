resource "dynatrace_oneagent_features" "SENSOR_NODEJS_MEMCACHED" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_MEMCACHED"
  scope           = "environment"
}
