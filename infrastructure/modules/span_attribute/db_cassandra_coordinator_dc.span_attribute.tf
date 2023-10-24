resource "dynatrace_span_attribute" "db_cassandra_coordinator_dc" {
  key     = "db.cassandra.coordinator.dc"
  masking = "NOT_MASKED"
}
