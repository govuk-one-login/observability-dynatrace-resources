resource "dynatrace_oneagent_features" "SENSOR_JAVA_CUSTOM_SERVICE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_CUSTOM_SERVICE"
  scope           = "environment"
}
