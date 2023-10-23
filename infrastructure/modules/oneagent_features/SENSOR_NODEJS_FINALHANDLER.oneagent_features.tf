resource "dynatrace_oneagent_features" "SENSOR_NODEJS_FINALHANDLER" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_FINALHANDLER"
  scope           = "environment"
}
