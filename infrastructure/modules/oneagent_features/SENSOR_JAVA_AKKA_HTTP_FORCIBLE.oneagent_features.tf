resource "dynatrace_oneagent_features" "SENSOR_JAVA_AKKA_HTTP_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_AKKA_HTTP_FORCIBLE"
  scope           = "environment"
}
