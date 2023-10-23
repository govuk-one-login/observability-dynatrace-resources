resource "dynatrace_oneagent_features" "SENSOR_JAVA_AMQP" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_AMQP"
  scope           = "environment"
}
