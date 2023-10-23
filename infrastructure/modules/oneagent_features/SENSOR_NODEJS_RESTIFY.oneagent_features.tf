resource "dynatrace_oneagent_features" "SENSOR_NODEJS_RESTIFY" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_RESTIFY"
  scope           = "environment"
}
