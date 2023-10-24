resource "dynatrace_oneagent_features" "NODEJS_HTTP2_FORCIBLE" {
  enabled = true
  key     = "NODEJS_HTTP2_FORCIBLE"
  scope   = "environment"
}
