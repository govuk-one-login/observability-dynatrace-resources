resource "dynatrace_oneagent_features" "PHP_GC_METRICS" {
  enabled = true
  key     = "PHP_GC_METRICS"
  scope   = "environment"
}
