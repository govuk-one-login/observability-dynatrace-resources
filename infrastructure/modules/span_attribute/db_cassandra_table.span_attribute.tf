resource "dynatrace_span_attribute" "db_cassandra_table" {
  key     = "db.cassandra.table"
  masking = "NOT_MASKED"
}
