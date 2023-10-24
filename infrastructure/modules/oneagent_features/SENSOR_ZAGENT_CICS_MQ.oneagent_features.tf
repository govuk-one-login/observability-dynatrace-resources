resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_CICS_MQ" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_CICS_MQ"
  scope           = "environment"
}
