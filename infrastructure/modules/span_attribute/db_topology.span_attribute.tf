resource "dynatrace_span_attribute" "db_topology" {
  key     = "db.topology"
  masking = "NOT_MASKED"
}
