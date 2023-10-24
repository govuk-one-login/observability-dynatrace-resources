resource "dynatrace_generic_relationships" "_69091a9a-4851-32a2-9895-24ca63b2c016" {
  enabled          = true
  created_by       = "Dynatrace"
  from_type        = "span:service_instance"
  to_type          = "cloud_application_instance"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      source_type = "Spans"
    }
  }
}
