resource "dynatrace_oneagent_features" "SENSOR_NODEJS_EXPRESS" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_EXPRESS"
  scope           = "environment"
}
