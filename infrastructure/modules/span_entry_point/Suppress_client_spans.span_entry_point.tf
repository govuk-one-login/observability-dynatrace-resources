resource "dynatrace_span_entry_point" "Suppress_client_spans" {
  name   = "Suppress client spans"
  action = "DONT_CREATE_ENTRYPOINT"
  matches {
    match {
      comparison = "EQUALS"
      source     = "SPAN_KIND"
      value      = "CLIENT"
    }
  }
}
