resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_CICS_TX" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_CICS_TX"
  scope           = "environment"
}
