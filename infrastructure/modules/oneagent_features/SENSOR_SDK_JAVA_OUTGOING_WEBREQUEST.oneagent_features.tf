resource "dynatrace_oneagent_features" "SENSOR_SDK_JAVA_OUTGOING_WEBREQUEST" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_SDK_JAVA_OUTGOING_WEBREQUEST"
  scope           = "environment"
}
