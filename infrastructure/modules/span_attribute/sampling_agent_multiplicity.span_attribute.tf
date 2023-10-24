resource "dynatrace_span_attribute" "sampling_agent_multiplicity" {
  key     = "sampling.agent_multiplicity"
  masking = "NOT_MASKED"
}
