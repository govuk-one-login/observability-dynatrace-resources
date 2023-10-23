resource "dynatrace_oneagent_features" "SENSOR_JAVA_CQL" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_CQL"
  scope           = "environment"
}
