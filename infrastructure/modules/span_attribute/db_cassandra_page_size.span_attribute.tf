resource "dynatrace_span_attribute" "db_cassandra_page_size" {
  key     = "db.cassandra.page_size"
  masking = "NOT_MASKED"
}
