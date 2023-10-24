resource "dynatrace_span_attribute" "enduser_role" {
  key     = "enduser.role"
  masking = "NOT_MASKED"
}
