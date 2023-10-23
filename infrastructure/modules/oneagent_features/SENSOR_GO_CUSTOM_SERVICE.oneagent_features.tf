resource "dynatrace_oneagent_features" "SENSOR_GO_CUSTOM_SERVICE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_GO_CUSTOM_SERVICE"
  scope           = "environment"
}
