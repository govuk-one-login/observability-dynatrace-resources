resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_IMS_DLI" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_IMS_DLI"
  scope           = "environment"
}
