resource "dynatrace_span_attribute" "db_sql_resultset_exceptioncount" {
  key     = "db.sql.resultset_exceptioncount"
  masking = "NOT_MASKED"
}
