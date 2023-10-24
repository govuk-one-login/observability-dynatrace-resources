resource "dynatrace_oneagent_features" "SENSOR_NODEJS_CLIENTWEBREQUEST" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_CLIENTWEBREQUEST"
  scope           = "environment"
}
