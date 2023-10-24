resource "dynatrace_span_attribute" "sampling_backend_multiplicity" {
  key     = "sampling.backend_multiplicity"
  masking = "NOT_MASKED"
}
