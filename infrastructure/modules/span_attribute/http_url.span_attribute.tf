resource "dynatrace_span_attribute" "http_url" {
  key     = "http.url"
  masking = "MASK_ENTIRE_VALUE"
}
