resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_CICS_DLI" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_CICS_DLI"
  scope           = "environment"
}
