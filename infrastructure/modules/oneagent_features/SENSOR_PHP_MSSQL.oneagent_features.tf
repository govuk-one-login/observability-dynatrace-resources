resource "dynatrace_oneagent_features" "SENSOR_PHP_MSSQL" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_MSSQL"
  scope           = "environment"
}
