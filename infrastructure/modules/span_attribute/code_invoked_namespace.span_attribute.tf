resource "dynatrace_span_attribute" "code_invoked_namespace" {
  key     = "code.invoked.namespace"
  masking = "NOT_MASKED"
}
