resource "dynatrace_span_attribute" "messaging_kafka_tombstone" {
  key     = "messaging.kafka.tombstone"
  masking = "NOT_MASKED"
}
