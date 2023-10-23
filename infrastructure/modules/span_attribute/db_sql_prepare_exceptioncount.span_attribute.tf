resource "dynatrace_span_attribute" "db_sql_prepare_exceptioncount" {
  key     = "db.sql.prepare_exceptioncount"
  masking = "NOT_MASKED"
}
