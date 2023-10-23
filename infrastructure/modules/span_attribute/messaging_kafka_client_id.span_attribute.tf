resource "dynatrace_span_attribute" "messaging_kafka_client_id" {
  key     = "messaging.kafka.client_id"
  masking = "NOT_MASKED"
}
