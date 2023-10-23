resource "dynatrace_span_attribute" "messaging_destination" {
  key     = "messaging.destination"
  masking = "NOT_MASKED"
}
