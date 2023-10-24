resource "dynatrace_oneagent_features" "ONEAGENT_RESPONSE_COMPRESSION_DOWN" {
  enabled = true
  key     = "ONEAGENT_RESPONSE_COMPRESSION_DOWN"
  scope   = "environment"
}
