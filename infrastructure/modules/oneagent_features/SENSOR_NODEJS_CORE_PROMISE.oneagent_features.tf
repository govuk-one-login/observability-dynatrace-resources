resource "dynatrace_oneagent_features" "SENSOR_NODEJS_CORE_PROMISE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_CORE_PROMISE"
  scope           = "environment"
}
