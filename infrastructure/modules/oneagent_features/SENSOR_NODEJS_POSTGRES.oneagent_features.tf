resource "dynatrace_oneagent_features" "SENSOR_NODEJS_POSTGRES" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_POSTGRES"
  scope           = "environment"
}
