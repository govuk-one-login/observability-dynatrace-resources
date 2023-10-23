resource "dynatrace_span_attribute" "messaging_kafka_message_key" {
  key     = "messaging.kafka.message_key"
  masking = "NOT_MASKED"
}
