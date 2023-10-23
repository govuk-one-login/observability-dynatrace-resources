resource "dynatrace_span_attribute" "db_statement" {
  key     = "db.statement"
  masking = "MASK_ENTIRE_VALUE"
}
