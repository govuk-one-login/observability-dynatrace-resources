resource "dynatrace_oneagent_features" "SENSOR_NODEJS_RABBITMQ" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_RABBITMQ"
  scope           = "environment"
}
