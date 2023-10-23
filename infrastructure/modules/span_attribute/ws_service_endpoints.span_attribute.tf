resource "dynatrace_span_attribute" "ws_service_endpoints" {
  key     = "ws.service.endpoints"
  masking = "NOT_MASKED"
}
