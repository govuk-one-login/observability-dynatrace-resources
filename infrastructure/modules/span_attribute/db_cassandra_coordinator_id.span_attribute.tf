resource "dynatrace_span_attribute" "db_cassandra_coordinator_id" {
  key     = "db.cassandra.coordinator.id"
  masking = "NOT_MASKED"
}
