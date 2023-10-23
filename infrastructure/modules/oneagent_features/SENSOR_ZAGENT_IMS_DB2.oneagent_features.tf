resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_IMS_DB2" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_IMS_DB2"
  scope           = "environment"
}
