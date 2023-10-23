resource "dynatrace_span_attribute" "db_sql_prepare_isparallelexecution" {
  key     = "db.sql.prepare_isparallelexecution"
  masking = "NOT_MASKED"
}
