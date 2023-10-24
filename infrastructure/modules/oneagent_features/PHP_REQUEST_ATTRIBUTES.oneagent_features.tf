resource "dynatrace_oneagent_features" "PHP_REQUEST_ATTRIBUTES" {
  enabled = true
  key     = "PHP_REQUEST_ATTRIBUTES"
  scope   = "environment"
}
