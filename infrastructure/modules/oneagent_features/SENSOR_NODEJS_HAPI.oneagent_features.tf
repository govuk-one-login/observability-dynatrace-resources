resource "dynatrace_oneagent_features" "SENSOR_NODEJS_HAPI" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_HAPI"
  scope           = "environment"
}
