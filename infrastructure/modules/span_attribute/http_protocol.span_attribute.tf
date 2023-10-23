resource "dynatrace_span_attribute" "http_protocol" {
  key     = "http.protocol"
  masking = "NOT_MASKED"
}
