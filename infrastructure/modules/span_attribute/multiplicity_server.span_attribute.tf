resource "dynatrace_span_attribute" "multiplicity_server" {
  key     = "multiplicity.server"
  masking = "NOT_MASKED"
}
