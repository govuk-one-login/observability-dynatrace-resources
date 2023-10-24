resource "dynatrace_span_attribute" "db_poolsize_occupied" {
  key     = "db.poolsize.occupied"
  masking = "NOT_MASKED"
}
