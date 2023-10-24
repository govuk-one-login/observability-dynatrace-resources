resource "dynatrace_oneagent_features" "SENSOR_JAVA_EXCEPTION" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_EXCEPTION"
  scope           = "environment"
}
