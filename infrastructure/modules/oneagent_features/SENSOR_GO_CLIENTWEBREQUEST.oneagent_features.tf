resource "dynatrace_oneagent_features" "SENSOR_GO_CLIENTWEBREQUEST" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_GO_CLIENTWEBREQUEST"
  scope           = "environment"
}
