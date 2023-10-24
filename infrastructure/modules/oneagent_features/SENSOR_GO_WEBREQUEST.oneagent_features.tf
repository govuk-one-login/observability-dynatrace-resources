resource "dynatrace_oneagent_features" "SENSOR_GO_WEBREQUEST" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_GO_WEBREQUEST"
  scope           = "environment"
}
