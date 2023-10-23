resource "dynatrace_span_attribute" "multiplicity_agent" {
  key     = "multiplicity.agent"
  masking = "NOT_MASKED"
}
