resource "dynatrace_span_attribute" "db_cassandra_consistency_level" {
  key     = "db.cassandra.consistency_level"
  masking = "NOT_MASKED"
}
