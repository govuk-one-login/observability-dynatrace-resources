resource "dynatrace_span_attribute" "messaging_destination_kind" {
  key     = "messaging.destination_kind"
  masking = "NOT_MASKED"
}
