resource "dynatrace_oneagent_features" "SENSOR_SDK_JAVA_CUSTOM_REQUEST_ATTRIBUTE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_SDK_JAVA_CUSTOM_REQUEST_ATTRIBUTE"
  scope           = "environment"
}
