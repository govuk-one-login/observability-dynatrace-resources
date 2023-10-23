resource "dynatrace_oneagent_features" "SENSOR_JAVA_MESSAGING" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_MESSAGING"
  scope           = "environment"
}
