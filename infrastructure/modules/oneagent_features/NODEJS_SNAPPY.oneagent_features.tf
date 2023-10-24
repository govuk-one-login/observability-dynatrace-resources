resource "dynatrace_oneagent_features" "NODEJS_SNAPPY" {
  enabled = true
  key     = "NODEJS_SNAPPY"
  scope   = "environment"
}
