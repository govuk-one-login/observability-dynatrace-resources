resource "dynatrace_span_attribute" "http_flavor" {
  key     = "http.flavor"
  masking = "NOT_MASKED"
}
