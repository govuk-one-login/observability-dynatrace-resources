resource "dynatrace_oneagent_features" "SENSOR_DOTNET_BIZEVENTS_HTTP_INCOMING" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_DOTNET_BIZEVENTS_HTTP_INCOMING"
  scope             = "environment"
}
