resource "dynatrace_span_attribute" "http_response_content_length" {
  key     = "http.response_content_length"
  masking = "NOT_MASKED"
}
