resource "dynatrace_span_attribute" "messaging_message_id" {
  key     = "messaging.message_id"
  masking = "NOT_MASKED"
}
