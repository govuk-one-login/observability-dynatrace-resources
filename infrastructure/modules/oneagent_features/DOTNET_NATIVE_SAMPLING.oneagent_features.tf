resource "dynatrace_oneagent_features" "DOTNET_NATIVE_SAMPLING" {
  enabled = true
  key     = "DOTNET_NATIVE_SAMPLING"
  scope   = "environment"
}
