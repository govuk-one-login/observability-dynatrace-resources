resource "dynatrace_span_attribute" "span_status_message" {
  key     = "span.status.message"
  masking = "NOT_MASKED"
}
