resource "dynatrace_oneagent_features" "SENSOR_NODEJS_CORE_TIMERS" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_CORE_TIMERS"
  scope           = "environment"
}
