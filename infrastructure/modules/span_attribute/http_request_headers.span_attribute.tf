resource "dynatrace_span_attribute" "http_request_headers" {
  key     = "http.request.headers"
  masking = "MASK_ENTIRE_VALUE"
}
