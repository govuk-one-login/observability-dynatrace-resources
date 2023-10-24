resource "dynatrace_oneagent_features" "SENSOR_PHP_MONGODB" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_MONGODB"
  scope           = "environment"
}
