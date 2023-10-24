resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_CICS_ZOSCONNECT" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_CICS_ZOSCONNECT"
  scope           = "environment"
}
