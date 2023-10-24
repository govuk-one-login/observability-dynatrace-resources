resource "dynatrace_span_attribute" "http_host" {
  key     = "http.host"
  masking = "NOT_MASKED"
}
