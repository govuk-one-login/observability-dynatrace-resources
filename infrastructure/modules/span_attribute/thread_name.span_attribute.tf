resource "dynatrace_span_attribute" "thread_name" {
  key     = "thread.name"
  masking = "NOT_MASKED"
}
