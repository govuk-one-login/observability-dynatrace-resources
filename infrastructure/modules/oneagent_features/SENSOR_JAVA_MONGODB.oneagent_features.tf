resource "dynatrace_oneagent_features" "SENSOR_JAVA_MONGODB" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_MONGODB"
  scope           = "environment"
}
