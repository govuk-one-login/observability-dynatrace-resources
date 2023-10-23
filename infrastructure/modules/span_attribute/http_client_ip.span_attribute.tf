resource "dynatrace_span_attribute" "http_client_ip" {
  key     = "http.client_ip"
  masking = "NOT_MASKED"
}
