resource "dynatrace_oneagent_features" "SENSOR_NODEJS_MYSQL2_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_MYSQL2_FORCIBLE"
  scope           = "environment"
}
