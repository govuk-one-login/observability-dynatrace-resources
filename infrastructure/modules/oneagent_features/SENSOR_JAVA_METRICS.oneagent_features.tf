resource "dynatrace_oneagent_features" "SENSOR_JAVA_METRICS" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_METRICS"
  scope           = "environment"
}
