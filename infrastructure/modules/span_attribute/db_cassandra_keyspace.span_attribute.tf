resource "dynatrace_span_attribute" "db_cassandra_keyspace" {
  key     = "db.cassandra.keyspace"
  masking = "NOT_MASKED"
}
