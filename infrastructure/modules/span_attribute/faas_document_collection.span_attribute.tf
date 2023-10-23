resource "dynatrace_span_attribute" "faas_document_collection" {
  key     = "faas.document.collection"
  masking = "NOT_MASKED"
}
