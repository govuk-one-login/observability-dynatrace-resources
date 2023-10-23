resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_CICS_TTX" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_CICS_TTX"
  scope           = "environment"
}
