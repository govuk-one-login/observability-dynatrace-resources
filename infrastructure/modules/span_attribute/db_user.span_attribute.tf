resource "dynatrace_span_attribute" "db_user" {
  key     = "db.user"
  masking = "NOT_MASKED"
}
