resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_IMS_ZOSCONNECT" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_IMS_ZOSCONNECT"
  scope           = "environment"
}
