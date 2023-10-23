resource "dynatrace_span_attribute" "http_response_status_code" {
  key     = "http.response.status_code"
  masking = "NOT_MASKED"
}
