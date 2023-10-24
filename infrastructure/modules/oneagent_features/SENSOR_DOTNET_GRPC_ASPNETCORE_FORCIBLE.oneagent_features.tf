resource "dynatrace_oneagent_features" "SENSOR_DOTNET_GRPC_ASPNETCORE_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_GRPC_ASPNETCORE_FORCIBLE"
  scope           = "environment"
}
