resource "dynatrace_oneagent_features" "SENSOR_JAVA_TIBCO" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_TIBCO"
  scope           = "environment"
}
