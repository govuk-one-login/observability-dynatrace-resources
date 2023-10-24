resource "dynatrace_oneagent_features" "SENSOR_GO_CQL" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_GO_CQL"
  scope             = "environment"
}
