resource "dynatrace_oneagent_features" "SENSOR_DOTNET_OPENTELEMETRY" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_DOTNET_OPENTELEMETRY"
  scope             = "environment"
}
