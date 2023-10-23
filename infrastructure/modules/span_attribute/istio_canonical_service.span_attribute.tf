resource "dynatrace_span_attribute" "istio_canonical_service" {
  key     = "istio.canonical_service"
  masking = "NOT_MASKED"
}
