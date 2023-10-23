resource "dynatrace_span_attribute" "db_sql_resultset_latestendtime" {
  key     = "db.sql.resultset_latestendtime"
  masking = "NOT_MASKED"
}
