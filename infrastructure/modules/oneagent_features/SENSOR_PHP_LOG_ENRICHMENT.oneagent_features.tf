resource "dynatrace_oneagent_features" "SENSOR_PHP_LOG_ENRICHMENT" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PHP_LOG_ENRICHMENT"
  scope             = "environment"
}
