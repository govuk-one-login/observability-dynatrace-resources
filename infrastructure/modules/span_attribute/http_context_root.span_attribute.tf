resource "dynatrace_span_attribute" "http_context_root" {
  key     = "http.context_root"
  masking = "NOT_MASKED"
}
