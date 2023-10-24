resource "dynatrace_oneagent_features" "SENSOR_NODEJS_MYSQL" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_MYSQL"
  scope           = "environment"
}
