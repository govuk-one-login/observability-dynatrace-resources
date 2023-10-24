resource "dynatrace_generic_relationships" "_2f0f26b0-f15b-31d0-b6fc-01df821c643b" {
  enabled          = true
  created_by       = "Dynatrace"
  from_type        = "os:service"
  to_type          = "host"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      source_type = "Topology"
    }
    source {
      condition   = "$eq(builtin:osservice.availability)"
      source_type = "Metrics"
    }
    source {
      condition   = "$eq(AVAILABILITY_EVENT)"
      source_type = "Events"
    }
  }
}
