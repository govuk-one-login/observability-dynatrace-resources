resource "dynatrace_oneagent_features" "SENSOR_SDK_JAVA_INCOMING_REMOTE_CALL" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_SDK_JAVA_INCOMING_REMOTE_CALL"
  scope           = "environment"
}
