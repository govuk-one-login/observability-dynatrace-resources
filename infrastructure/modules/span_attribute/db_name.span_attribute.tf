resource "dynatrace_span_attribute" "db_name" {
  key     = "db.name"
  masking = "NOT_MASKED"
}
