resource "dynatrace_span_attribute" "http_request_body_size" {
  key     = "http.request.body.size"
  masking = "NOT_MASKED"
}
