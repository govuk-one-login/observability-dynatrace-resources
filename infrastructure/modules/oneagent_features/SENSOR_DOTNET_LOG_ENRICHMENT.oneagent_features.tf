resource "dynatrace_oneagent_features" "SENSOR_DOTNET_LOG_ENRICHMENT" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_DOTNET_LOG_ENRICHMENT"
  scope             = "environment"
}
