resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_CICS_HTTP" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_CICS_HTTP"
  scope           = "environment"
}
