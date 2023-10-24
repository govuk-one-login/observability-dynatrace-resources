resource "dynatrace_span_attribute" "graphql_operation_graphqlname" {
  key     = "graphql.operation.graphqlname"
  masking = "NOT_MASKED"
}
