resource "dynatrace_oneagent_features" "SENSOR_GO_REDIS" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_GO_REDIS"
  scope             = "environment"
}
