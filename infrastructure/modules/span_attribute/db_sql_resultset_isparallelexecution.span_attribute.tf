resource "dynatrace_span_attribute" "db_sql_resultset_isparallelexecution" {
  key     = "db.sql.resultset_isparallelexecution"
  masking = "NOT_MASKED"
}
