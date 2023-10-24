resource "dynatrace_span_attribute" "graphql_operation_resolver_call_count" {
  key     = "graphql.operation.resolver_call_count"
  masking = "NOT_MASKED"
}
