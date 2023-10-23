resource "dynatrace_oneagent_features" "SENSOR_GO_OPENTELEMETRY" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_GO_OPENTELEMETRY"
  scope             = "environment"
}
