resource "dynatrace_span_attribute" "http_request_content_length_uncompressed" {
  key     = "http.request_content_length_uncompressed"
  masking = "NOT_MASKED"
}
