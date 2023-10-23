resource "dynatrace_api_detection" "Built-In_Java_RabbitMQ" {
  api_color       = "#aeebf0"
  api_name        = "Built-In Java RabbitMQ"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.rabbitmq."
    }
  }
}
