resource "dynatrace_span_attribute" "http_request_method" {
  key     = "http.request.method"
  masking = "NOT_MASKED"
}
