resource "dynatrace_span_attribute" "db_cassandra_idempotence" {
  key     = "db.cassandra.idempotence"
  masking = "NOT_MASKED"
}
