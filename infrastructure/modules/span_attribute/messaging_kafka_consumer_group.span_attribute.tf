resource "dynatrace_span_attribute" "messaging_kafka_consumer_group" {
  key     = "messaging.kafka.consumer_group"
  masking = "NOT_MASKED"
}
