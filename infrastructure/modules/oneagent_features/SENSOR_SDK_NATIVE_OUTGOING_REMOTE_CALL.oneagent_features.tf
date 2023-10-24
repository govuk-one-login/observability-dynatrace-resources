resource "dynatrace_oneagent_features" "SENSOR_SDK_NATIVE_OUTGOING_REMOTE_CALL" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_SDK_NATIVE_OUTGOING_REMOTE_CALL"
  scope           = "environment"
}
