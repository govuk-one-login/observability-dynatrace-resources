resource "dynatrace_generic_relationships" "d65f4999-21a2-3cbe-9abb-145fdde91b60" {
  enabled          = true
  created_by       = "Dynatrace"
  from_type        = "process_group_instance"
  to_type          = "os:service"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      source_type = "Topology"
    }
    source {
      condition   = "$eq(builtin:osservice.availability)"
      source_type = "Metrics"
    }
  }
}
