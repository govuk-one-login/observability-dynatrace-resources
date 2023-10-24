resource "dynatrace_oneagent_features" "SENSOR_SDK_JAVA_INCOMING_WEBREQUEST" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_SDK_JAVA_INCOMING_WEBREQUEST"
  scope           = "environment"
}
