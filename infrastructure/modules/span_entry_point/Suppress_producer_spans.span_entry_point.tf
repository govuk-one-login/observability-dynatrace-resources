resource "dynatrace_span_entry_point" "Suppress_producer_spans" {
  name   = "Suppress producer spans"
  action = "DONT_CREATE_ENTRYPOINT"
  matches {
    match {
      comparison = "EQUALS"
      source     = "SPAN_KIND"
      value      = "PRODUCER"
    }
  }
}
