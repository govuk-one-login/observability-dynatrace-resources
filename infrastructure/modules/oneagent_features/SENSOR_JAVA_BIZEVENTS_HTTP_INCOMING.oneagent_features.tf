resource "dynatrace_oneagent_features" "SENSOR_JAVA_BIZEVENTS_HTTP_INCOMING" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_JAVA_BIZEVENTS_HTTP_INCOMING"
  scope             = "environment"
}
