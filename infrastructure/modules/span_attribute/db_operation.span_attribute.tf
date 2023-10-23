resource "dynatrace_span_attribute" "db_operation" {
  key     = "db.operation"
  masking = "NOT_MASKED"
}
