resource "dynatrace_span_attribute" "db_sql_resultset_durationsum" {
  key     = "db.sql.resultset_durationsum"
  masking = "NOT_MASKED"
}
