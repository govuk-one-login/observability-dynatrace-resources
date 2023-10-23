resource "dynatrace_span_attribute" "url_full" {
  key     = "url.full"
  masking = "MASK_ENTIRE_VALUE"
}
