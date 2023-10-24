resource "dynatrace_span_attribute" "messaging_message_id" {
  key     = "messaging.message.id"
  masking = "NOT_MASKED"
}
