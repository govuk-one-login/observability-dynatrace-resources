resource "dynatrace_span_attribute" "messaging_temp_destination" {
  key     = "messaging.temp_destination"
  masking = "NOT_MASKED"
}
