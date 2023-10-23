resource "dynatrace_span_entry_point" "Suppress_internal_spans" {
  name   = "Suppress internal spans"
  action = "DONT_CREATE_ENTRYPOINT"
  matches {
    match {
      comparison = "EQUALS"
      source     = "SPAN_KIND"
      value      = "INTERNAL"
    }
  }
}
