resource "dynatrace_oneagent_features" "SENSOR_JAVA_MQSERIES" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_MQSERIES"
  scope           = "environment"
}
