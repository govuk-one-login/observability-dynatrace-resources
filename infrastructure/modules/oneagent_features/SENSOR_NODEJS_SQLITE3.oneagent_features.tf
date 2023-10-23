resource "dynatrace_oneagent_features" "SENSOR_NODEJS_SQLITE3" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_SQLITE3"
  scope           = "environment"
}
