resource "dynatrace_span_attribute" "url_query" {
  key     = "url.query"
  masking = "MASK_ENTIRE_VALUE"
}
