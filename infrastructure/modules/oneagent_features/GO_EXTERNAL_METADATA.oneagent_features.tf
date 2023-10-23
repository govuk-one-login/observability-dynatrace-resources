resource "dynatrace_oneagent_features" "GO_EXTERNAL_METADATA" {
  enabled = true
  key     = "GO_EXTERNAL_METADATA"
  scope   = "environment"
}
