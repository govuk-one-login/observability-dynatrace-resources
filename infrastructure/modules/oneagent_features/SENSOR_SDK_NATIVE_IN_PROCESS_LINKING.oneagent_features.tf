resource "dynatrace_oneagent_features" "SENSOR_SDK_NATIVE_IN_PROCESS_LINKING" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_SDK_NATIVE_IN_PROCESS_LINKING"
  scope           = "environment"
}
