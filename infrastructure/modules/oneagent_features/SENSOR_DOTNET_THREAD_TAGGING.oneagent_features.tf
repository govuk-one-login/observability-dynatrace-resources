resource "dynatrace_oneagent_features" "SENSOR_DOTNET_THREAD_TAGGING" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_THREAD_TAGGING"
  scope           = "environment"
}
