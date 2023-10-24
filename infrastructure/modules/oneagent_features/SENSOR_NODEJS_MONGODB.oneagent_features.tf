resource "dynatrace_oneagent_features" "SENSOR_NODEJS_MONGODB" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_MONGODB"
  scope           = "environment"
}
