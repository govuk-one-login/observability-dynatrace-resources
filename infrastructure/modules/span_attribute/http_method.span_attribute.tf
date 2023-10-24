resource "dynatrace_span_attribute" "http_method" {
  key     = "http.method"
  masking = "NOT_MASKED"
}
