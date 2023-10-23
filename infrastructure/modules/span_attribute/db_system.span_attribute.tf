resource "dynatrace_span_attribute" "db_system" {
  key     = "db.system"
  masking = "NOT_MASKED"
}
