resource "dynatrace_span_attribute" "db_sql_prepare_latestendtime" {
  key     = "db.sql.prepare_latestendtime"
  masking = "NOT_MASKED"
}
