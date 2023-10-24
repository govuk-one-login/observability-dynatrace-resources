resource "dynatrace_span_attribute" "url_scheme" {
  key     = "url.scheme"
  masking = "NOT_MASKED"
}
