resource "dynatrace_span_attribute" "db_mssql_instance_name" {
  key     = "db.mssql.instance_name"
  masking = "NOT_MASKED"
}
