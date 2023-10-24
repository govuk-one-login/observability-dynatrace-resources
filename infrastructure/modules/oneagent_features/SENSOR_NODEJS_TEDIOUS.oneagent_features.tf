resource "dynatrace_oneagent_features" "SENSOR_NODEJS_TEDIOUS" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_TEDIOUS"
  scope           = "environment"
}
