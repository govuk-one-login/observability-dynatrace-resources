resource "dynatrace_span_attribute" "client_ip" {
  key     = "client.ip"
  masking = "MASK_ENTIRE_VALUE"
}
