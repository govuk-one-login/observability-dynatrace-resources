resource "dynatrace_oneagent_features" "SENSOR_PHP_PDO" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_PDO"
  scope           = "environment"
}
