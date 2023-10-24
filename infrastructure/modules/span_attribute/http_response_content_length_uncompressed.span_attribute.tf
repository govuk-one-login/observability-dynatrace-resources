resource "dynatrace_span_attribute" "http_response_content_length_uncompressed" {
  key     = "http.response_content_length_uncompressed"
  masking = "NOT_MASKED"
}
