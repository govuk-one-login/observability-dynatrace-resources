resource "dynatrace_span_attribute" "span_tracing_system" {
  key     = "span.tracing.system"
  masking = "NOT_MASKED"
}
