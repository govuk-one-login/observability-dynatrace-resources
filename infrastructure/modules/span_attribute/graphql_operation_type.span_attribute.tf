resource "dynatrace_span_attribute" "graphql_operation_type" {
  key     = "graphql.operation.type"
  masking = "NOT_MASKED"
}
