resource "dynatrace_oneagent_features" "SENSOR_NODEJS_CORE_PROCESS" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_CORE_PROCESS"
  scope           = "environment"
}
