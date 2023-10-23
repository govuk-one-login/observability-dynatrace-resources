resource "dynatrace_oneagent_features" "SENSOR_SDK_JAVA_OUTGOING_MESSAGING" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_SDK_JAVA_OUTGOING_MESSAGING"
  scope           = "environment"
}
