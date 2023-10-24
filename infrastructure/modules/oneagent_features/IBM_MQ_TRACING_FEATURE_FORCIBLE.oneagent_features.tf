resource "dynatrace_oneagent_features" "IBM_MQ_TRACING_FEATURE_FORCIBLE" {
  enabled = true
  key     = "IBM_MQ_TRACING_FEATURE_FORCIBLE"
  scope   = "environment"
}
