resource "dynatrace_oneagent_features" "SENSOR_JAVA_JDBC" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_JDBC"
  scope           = "environment"
}
