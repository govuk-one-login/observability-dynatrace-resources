resource "dynatrace_oneagent_features" "SENSOR_JAVA_NETTY" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_NETTY"
  scope           = "environment"
}
