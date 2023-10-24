resource "dynatrace_span_attribute" "http_request_content_length" {
  key     = "http.request_content_length"
  masking = "NOT_MASKED"
}
