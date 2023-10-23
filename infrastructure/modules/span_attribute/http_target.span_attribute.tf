resource "dynatrace_span_attribute" "http_target" {
  key     = "http.target"
  masking = "MASK_ENTIRE_VALUE"
}
