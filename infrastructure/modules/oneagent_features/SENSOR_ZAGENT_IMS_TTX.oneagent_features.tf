resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_IMS_TTX" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_IMS_TTX"
  scope           = "environment"
}
