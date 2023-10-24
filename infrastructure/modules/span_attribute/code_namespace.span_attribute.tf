resource "dynatrace_span_attribute" "code_namespace" {
  key     = "code.namespace"
  masking = "NOT_MASKED"
}
