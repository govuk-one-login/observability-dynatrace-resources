resource "dynatrace_oneagent_features" "SENSOR_NODEJS_WEBREQUEST" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_WEBREQUEST"
  scope           = "environment"
}
