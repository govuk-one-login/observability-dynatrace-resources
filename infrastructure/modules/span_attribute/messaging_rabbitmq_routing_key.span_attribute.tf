resource "dynatrace_span_attribute" "messaging_rabbitmq_routing_key" {
  key     = "messaging.rabbitmq.routing_key"
  masking = "NOT_MASKED"
}
