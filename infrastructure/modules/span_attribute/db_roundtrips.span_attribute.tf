resource "dynatrace_span_attribute" "db_roundtrips" {
  key     = "db.roundtrips"
  masking = "NOT_MASKED"
}
