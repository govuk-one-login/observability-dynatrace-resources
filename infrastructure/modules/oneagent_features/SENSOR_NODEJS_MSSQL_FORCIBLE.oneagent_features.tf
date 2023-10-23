resource "dynatrace_oneagent_features" "SENSOR_NODEJS_MSSQL_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_MSSQL_FORCIBLE"
  scope           = "environment"
}
