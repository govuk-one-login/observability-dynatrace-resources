resource "dynatrace_span_attribute" "messaging_operation" {
  key     = "messaging.operation"
  masking = "NOT_MASKED"
}
