resource "dynatrace_oneagent_features" "NODEJS_WORKERTHREADS" {
  enabled = false
  key     = "NODEJS_WORKERTHREADS"
  scope   = "environment"
}
