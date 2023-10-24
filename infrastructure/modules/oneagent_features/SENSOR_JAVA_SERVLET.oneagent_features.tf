resource "dynatrace_oneagent_features" "SENSOR_JAVA_SERVLET" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_SERVLET"
  scope           = "environment"
}
