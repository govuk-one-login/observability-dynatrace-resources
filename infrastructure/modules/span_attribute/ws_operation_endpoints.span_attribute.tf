resource "dynatrace_span_attribute" "ws_operation_endpoints" {
  key     = "ws.operation.endpoints"
  masking = "NOT_MASKED"
}
