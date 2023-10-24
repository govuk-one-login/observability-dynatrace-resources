resource "dynatrace_span_attribute" "http_response_body_size" {
  key     = "http.response.body.size"
  masking = "NOT_MASKED"
}
