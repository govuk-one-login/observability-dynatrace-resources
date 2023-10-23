resource "dynatrace_span_attribute" "thread_id" {
  key     = "thread.id"
  masking = "NOT_MASKED"
}
