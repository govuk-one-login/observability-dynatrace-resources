resource "dynatrace_oneagent_features" "SENSOR_NODEJS_CORE_FILESYSTEM" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_CORE_FILESYSTEM"
  scope           = "environment"
}
