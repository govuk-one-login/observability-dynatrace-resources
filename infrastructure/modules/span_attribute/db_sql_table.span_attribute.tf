resource "dynatrace_span_attribute" "db_sql_table" {
  key     = "db.sql.table"
  masking = "NOT_MASKED"
}
