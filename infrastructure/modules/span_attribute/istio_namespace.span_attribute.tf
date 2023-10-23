resource "dynatrace_span_attribute" "istio_namespace" {
  key     = "istio.namespace"
  masking = "NOT_MASKED"
}
