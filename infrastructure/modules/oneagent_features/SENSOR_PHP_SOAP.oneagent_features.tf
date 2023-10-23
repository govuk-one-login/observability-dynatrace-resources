resource "dynatrace_oneagent_features" "SENSOR_PHP_SOAP" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_SOAP"
  scope           = "environment"
}
