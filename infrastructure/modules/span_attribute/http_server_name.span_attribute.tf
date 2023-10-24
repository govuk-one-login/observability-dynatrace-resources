resource "dynatrace_span_attribute" "http_server_name" {
  key     = "http.server_name"
  masking = "NOT_MASKED"
}
