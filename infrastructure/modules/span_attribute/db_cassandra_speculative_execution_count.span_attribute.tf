resource "dynatrace_span_attribute" "db_cassandra_speculative_execution_count" {
  key     = "db.cassandra.speculative_execution_count"
  masking = "NOT_MASKED"
}
