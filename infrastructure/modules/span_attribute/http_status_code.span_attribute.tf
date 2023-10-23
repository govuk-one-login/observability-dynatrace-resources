resource "dynatrace_span_attribute" "http_status_code" {
  key     = "http.status_code"
  masking = "NOT_MASKED"
}
