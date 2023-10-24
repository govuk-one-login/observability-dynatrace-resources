resource "dynatrace_oneagent_features" "SENSOR_PURE_PATH_CAPTURING" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PURE_PATH_CAPTURING"
  scope           = "environment"
}
