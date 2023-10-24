resource "dynatrace_span_attribute" "db_sql_prepare_count" {
  key     = "db.sql.prepare_count"
  masking = "NOT_MASKED"
}
