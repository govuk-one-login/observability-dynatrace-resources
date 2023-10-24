resource "dynatrace_oneagent_features" "SENSOR_GO_BIZEVENTS_HTTP_INCOMING" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_GO_BIZEVENTS_HTTP_INCOMING"
  scope             = "environment"
}
