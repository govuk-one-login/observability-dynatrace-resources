resource "dynatrace_generic_types" "span_service_instance" {
  name         = "span:service_instance"
  enabled      = false
  created_by   = "Dynatrace"
  display_name = "Service Instance"
  rules {
    rule {
      icon_pattern          = "opentelemetry"
      id_pattern            = "{dt.entity.host} {service.name}"
      instance_name_pattern = "{service.name}"
      sources {
        source {
          source_type = "Spans"
        }
      }
    }
  }
}
