resource "dynatrace_oneagent_features" "SENSOR_DOTNET_KAFKA" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_DOTNET_KAFKA"
  scope             = "environment"
}
