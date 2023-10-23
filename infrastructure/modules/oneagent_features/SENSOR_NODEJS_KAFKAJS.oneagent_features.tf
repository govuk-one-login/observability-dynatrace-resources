resource "dynatrace_oneagent_features" "SENSOR_NODEJS_KAFKAJS" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_NODEJS_KAFKAJS"
  scope             = "environment"
}
