resource "dynatrace_oneagent_features" "SENSOR_SDK_NATIVE_CUSTOM_REQUEST_ATTRIBUTE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_SDK_NATIVE_CUSTOM_REQUEST_ATTRIBUTE"
  scope           = "environment"
}
