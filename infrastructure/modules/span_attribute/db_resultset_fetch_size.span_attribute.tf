resource "dynatrace_span_attribute" "db_resultset_fetch_size" {
  key     = "db.resultset_fetch_size"
  masking = "NOT_MASKED"
}
