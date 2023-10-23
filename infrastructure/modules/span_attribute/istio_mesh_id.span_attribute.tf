resource "dynatrace_span_attribute" "istio_mesh_id" {
  key     = "istio.mesh_id"
  masking = "NOT_MASKED"
}
