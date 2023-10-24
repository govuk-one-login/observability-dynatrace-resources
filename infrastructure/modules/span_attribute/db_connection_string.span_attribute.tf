resource "dynatrace_span_attribute" "db_connection_string" {
  key     = "db.connection_string"
  masking = "MASK_ENTIRE_VALUE"
}
