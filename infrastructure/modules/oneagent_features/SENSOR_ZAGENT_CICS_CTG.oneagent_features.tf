resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_CICS_CTG" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_CICS_CTG"
  scope           = "environment"
}
