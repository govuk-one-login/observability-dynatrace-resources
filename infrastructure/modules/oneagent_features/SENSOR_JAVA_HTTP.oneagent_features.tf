resource "dynatrace_oneagent_features" "SENSOR_JAVA_HTTP" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_HTTP"
  scope           = "environment"
}
