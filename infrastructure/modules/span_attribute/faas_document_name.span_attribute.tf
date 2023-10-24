resource "dynatrace_span_attribute" "faas_document_name" {
  key     = "faas.document.name"
  masking = "NOT_MASKED"
}
