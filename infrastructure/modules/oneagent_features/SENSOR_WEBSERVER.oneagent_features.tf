resource "dynatrace_oneagent_features" "SENSOR_WEBSERVER" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_WEBSERVER"
  scope           = "environment"
}
