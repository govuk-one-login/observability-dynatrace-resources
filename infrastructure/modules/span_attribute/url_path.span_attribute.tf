resource "dynatrace_span_attribute" "url_path" {
  key     = "url.path"
  masking = "MASK_ENTIRE_VALUE"
}
