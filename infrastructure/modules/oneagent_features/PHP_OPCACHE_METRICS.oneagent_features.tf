resource "dynatrace_oneagent_features" "PHP_OPCACHE_METRICS" {
  enabled = true
  key     = "PHP_OPCACHE_METRICS"
  scope   = "environment"
}
