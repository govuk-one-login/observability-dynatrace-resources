resource "dynatrace_span_attribute" "http_scheme" {
  key     = "http.scheme"
  masking = "NOT_MASKED"
}
