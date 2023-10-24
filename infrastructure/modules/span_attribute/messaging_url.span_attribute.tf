resource "dynatrace_span_attribute" "messaging_url" {
  key     = "messaging.url"
  masking = "MASK_ENTIRE_VALUE"
}
