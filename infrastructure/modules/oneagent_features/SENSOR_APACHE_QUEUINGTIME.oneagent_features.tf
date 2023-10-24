resource "dynatrace_oneagent_features" "SENSOR_APACHE_QUEUINGTIME" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_APACHE_QUEUINGTIME"
  scope           = "environment"
}
