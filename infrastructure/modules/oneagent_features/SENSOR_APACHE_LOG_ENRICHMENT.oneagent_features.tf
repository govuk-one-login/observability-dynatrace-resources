resource "dynatrace_oneagent_features" "SENSOR_APACHE_LOG_ENRICHMENT" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_APACHE_LOG_ENRICHMENT"
  scope             = "environment"
}
