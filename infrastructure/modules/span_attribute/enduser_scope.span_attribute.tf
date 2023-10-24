resource "dynatrace_span_attribute" "enduser_scope" {
  key     = "enduser.scope"
  masking = "NOT_MASKED"
}
