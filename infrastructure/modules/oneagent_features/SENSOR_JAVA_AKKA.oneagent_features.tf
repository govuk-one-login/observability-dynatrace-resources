resource "dynatrace_oneagent_features" "SENSOR_JAVA_AKKA" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_AKKA"
  scope           = "environment"
}
