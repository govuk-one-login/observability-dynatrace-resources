resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_CICS_FILE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_CICS_FILE"
  scope           = "environment"
}
