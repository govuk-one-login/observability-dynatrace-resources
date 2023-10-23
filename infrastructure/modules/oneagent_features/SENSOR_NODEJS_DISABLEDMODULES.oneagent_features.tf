resource "dynatrace_oneagent_features" "SENSOR_NODEJS_DISABLEDMODULES" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_DISABLEDMODULES"
  scope           = "environment"
}
