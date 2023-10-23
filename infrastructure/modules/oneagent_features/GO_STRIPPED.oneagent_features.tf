resource "dynatrace_oneagent_features" "GO_STRIPPED" {
  enabled = true
  key     = "GO_STRIPPED"
  scope   = "environment"
}
