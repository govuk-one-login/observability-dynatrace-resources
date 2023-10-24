resource "dynatrace_span_attribute" "http_route" {
  key     = "http.route"
  masking = "NOT_MASKED"
}
