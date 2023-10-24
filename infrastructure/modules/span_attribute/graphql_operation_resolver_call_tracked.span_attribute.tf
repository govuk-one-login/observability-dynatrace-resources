resource "dynatrace_span_attribute" "graphql_operation_resolver_call_tracked" {
  key     = "graphql.operation.resolver_call_tracked"
  masking = "NOT_MASKED"
}
