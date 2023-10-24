resource "dynatrace_oneagent_features" "SENSOR_GO_SQL_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_GO_SQL_FORCIBLE"
  scope           = "environment"
}
