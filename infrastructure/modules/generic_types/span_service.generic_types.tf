resource "dynatrace_generic_types" "span_service" {
  name         = "span:service"
  enabled      = false
  created_by   = "Dynatrace"
  display_name = "Service"
  rules {
    rule {
      icon_pattern          = "opentelemetry"
      id_pattern            = "{service.name}"
      instance_name_pattern = "{service.name}"
      attributes {
        attribute {
          display_name = "Service Name"
          key          = "servicename"
          pattern      = "{service.name}"
        }
      }
      sources {
        source {
          source_type = "Spans"
        }
        source {
          condition   = "$eq(builtin:span_responsetime)"
          source_type = "Metrics"
        }
        source {
          condition   = "$eq(builtin:span_throughput)"
          source_type = "Metrics"
        }
        source {
          condition   = "$eq(builtin:span_failure_rate)"
          source_type = "Metrics"
        }
      }
    }
  }
}
