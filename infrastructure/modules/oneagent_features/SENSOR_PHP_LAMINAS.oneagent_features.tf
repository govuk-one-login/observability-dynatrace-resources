resource "dynatrace_oneagent_features" "SENSOR_PHP_LAMINAS" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_LAMINAS"
  scope           = "environment"
}
