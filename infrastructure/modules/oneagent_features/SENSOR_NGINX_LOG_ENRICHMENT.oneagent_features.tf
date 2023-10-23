resource "dynatrace_oneagent_features" "SENSOR_NGINX_LOG_ENRICHMENT" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_NGINX_LOG_ENRICHMENT"
  scope             = "environment"
}
