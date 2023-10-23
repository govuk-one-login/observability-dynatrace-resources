resource "dynatrace_span_attribute" "messaging_kafka_partition" {
  key     = "messaging.kafka.partition"
  masking = "NOT_MASKED"
}
