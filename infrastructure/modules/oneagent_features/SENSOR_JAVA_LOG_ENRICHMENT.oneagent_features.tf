resource "dynatrace_oneagent_features" "SENSOR_JAVA_LOG_ENRICHMENT" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_JAVA_LOG_ENRICHMENT"
  scope             = "environment"
}
