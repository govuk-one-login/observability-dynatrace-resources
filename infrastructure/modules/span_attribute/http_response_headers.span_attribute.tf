resource "dynatrace_span_attribute" "http_response_headers" {
  key     = "http.response.headers"
  masking = "MASK_ENTIRE_VALUE"
}
