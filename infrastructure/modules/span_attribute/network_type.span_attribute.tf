resource "dynatrace_span_attribute" "network_type" {
  key     = "network.type"
  masking = "NOT_MASKED"
}
