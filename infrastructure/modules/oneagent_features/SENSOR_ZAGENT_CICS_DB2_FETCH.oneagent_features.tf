resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_CICS_DB2_FETCH" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_CICS_DB2_FETCH"
  scope           = "environment"
}
