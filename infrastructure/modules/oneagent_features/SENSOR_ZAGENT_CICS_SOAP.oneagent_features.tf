resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_CICS_SOAP" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_CICS_SOAP"
  scope           = "environment"
}
