resource "dynatrace_span_attribute" "faas_document_operation" {
  key     = "faas.document.operation"
  masking = "NOT_MASKED"
}
