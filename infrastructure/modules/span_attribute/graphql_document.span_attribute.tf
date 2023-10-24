resource "dynatrace_span_attribute" "graphql_document" {
  key     = "graphql.document"
  masking = "MASK_ENTIRE_VALUE"
}
