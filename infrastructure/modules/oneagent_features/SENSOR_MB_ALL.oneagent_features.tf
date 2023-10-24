resource "dynatrace_oneagent_features" "SENSOR_MB_ALL" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_MB_ALL"
  scope           = "environment"
}
