resource "dynatrace_oneagent_features" "SENSOR_JAVA_REQUEST_ATTRIBUTES" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_REQUEST_ATTRIBUTES"
  scope           = "environment"
}
