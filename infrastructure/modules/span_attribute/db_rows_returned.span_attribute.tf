resource "dynatrace_span_attribute" "db_rows_returned" {
  key     = "db.rows_returned"
  masking = "NOT_MASKED"
}
