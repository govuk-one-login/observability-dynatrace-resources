resource "dynatrace_oneagent_features" "SENSOR_NODEJS_CORE_EVENTS" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_CORE_EVENTS"
  scope           = "environment"
}
