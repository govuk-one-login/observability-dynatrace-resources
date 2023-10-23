resource "dynatrace_oneagent_features" "SENSOR_APACHE_MODULE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_APACHE_MODULE"
  scope           = "environment"
}
