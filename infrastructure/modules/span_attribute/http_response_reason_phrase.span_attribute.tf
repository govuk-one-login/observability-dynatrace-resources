resource "dynatrace_span_attribute" "http_response_reason_phrase" {
  key     = "http.response.reason_phrase"
  masking = "NOT_MASKED"
}
