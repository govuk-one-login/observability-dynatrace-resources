resource "dynatrace_api_detection" "Built-In_NET_RabbitMQ" {
  api_color       = "#aeebf0"
  api_name        = "Built-In .NET RabbitMQ"
  technology      = "dotNet"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "RabbitMQ."
    }
  }
}
