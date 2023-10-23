resource "dynatrace_oneagent_features" "SENSOR_JAVA_SPRING_INTEGRATION" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_SPRING_INTEGRATION"
  scope           = "environment"
}
