resource "dynatrace_span_attribute" "db_poolsize" {
  key     = "db.poolsize"
  masking = "NOT_MASKED"
}
