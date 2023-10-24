resource "dynatrace_oneagent_features" "SENSOR_JAVA_RMI" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_RMI"
  scope           = "environment"
}
