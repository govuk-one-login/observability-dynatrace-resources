resource "dynatrace_oneagent_features" "SENSOR_SDK_NATIVE_INCOMING_MESSAGING" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_SDK_NATIVE_INCOMING_MESSAGING"
  scope           = "environment"
}
