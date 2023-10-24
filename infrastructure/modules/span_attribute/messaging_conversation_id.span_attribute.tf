resource "dynatrace_span_attribute" "messaging_conversation_id" {
  key     = "messaging.conversation_id"
  masking = "NOT_MASKED"
}
