resource "dynatrace_span_attribute" "OperationName" {
  key     = "OperationName"
  masking = "NOT_MASKED"
}
