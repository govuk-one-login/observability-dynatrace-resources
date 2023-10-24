resource "dynatrace_oneagent_features" "SENSOR_JAVA_JMS" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_JMS"
  scope           = "environment"
}
