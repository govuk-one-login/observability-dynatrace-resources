resource "dynatrace_span_attribute" "db_sql_resultset_count" {
  key     = "db.sql.resultset_count"
  masking = "NOT_MASKED"
}
