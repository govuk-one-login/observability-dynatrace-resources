resource "dynatrace_span_attribute" "db_sql_prepare_durationsum" {
  key     = "db.sql.prepare_durationsum"
  masking = "NOT_MASKED"
}
