resource "dynatrace_oneagent_features" "SENSOR_PHP_HTTPREQUEST" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_HTTPREQUEST"
  scope           = "environment"
}
