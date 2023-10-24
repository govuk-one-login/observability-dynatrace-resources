resource "dynatrace_span_attribute" "http_application_id" {
  key     = "http.application_id"
  masking = "NOT_MASKED"
}
