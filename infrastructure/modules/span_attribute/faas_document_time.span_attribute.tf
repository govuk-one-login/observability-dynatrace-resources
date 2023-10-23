resource "dynatrace_span_attribute" "faas_document_time" {
  key     = "faas.document.time"
  masking = "NOT_MASKED"
}
