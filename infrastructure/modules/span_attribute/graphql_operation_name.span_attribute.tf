resource "dynatrace_span_attribute" "graphql_operation_name" {
  key     = "graphql.operation.name"
  masking = "NOT_MASKED"
}
