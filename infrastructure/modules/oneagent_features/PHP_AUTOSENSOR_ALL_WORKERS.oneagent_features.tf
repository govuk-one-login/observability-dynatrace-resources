resource "dynatrace_oneagent_features" "PHP_AUTOSENSOR_ALL_WORKERS" {
  enabled = false
  key     = "PHP_AUTOSENSOR_ALL_WORKERS"
  scope   = "environment"
}
