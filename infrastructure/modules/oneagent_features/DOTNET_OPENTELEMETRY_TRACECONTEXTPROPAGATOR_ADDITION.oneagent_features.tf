resource "dynatrace_oneagent_features" "DOTNET_OPENTELEMETRY_TRACECONTEXTPROPAGATOR_ADDITION" {
  enabled = true
  key     = "DOTNET_OPENTELEMETRY_TRACECONTEXTPROPAGATOR_ADDITION"
  scope   = "environment"
}
