resource "dynatrace_oneagent_features" "SENSOR_JAVA_THREADING" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_THREADING"
  scope           = "environment"
}
