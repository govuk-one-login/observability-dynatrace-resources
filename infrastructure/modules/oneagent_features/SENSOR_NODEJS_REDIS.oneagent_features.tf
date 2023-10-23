resource "dynatrace_oneagent_features" "SENSOR_NODEJS_REDIS" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_REDIS"
  scope           = "environment"
}
