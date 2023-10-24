resource "dynatrace_oneagent_features" "GO_SQL_PGX" {
  enabled = false
  key     = "GO_SQL_PGX"
  scope   = "environment"
}
