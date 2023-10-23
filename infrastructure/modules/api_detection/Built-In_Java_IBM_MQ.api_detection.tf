resource "dynatrace_api_detection" "Built-In_Java_IBM_MQ" {
  api_color       = "#ffd0ab"
  api_name        = "Built-In Java IBM MQ"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.ibm.mq."
    }
  }
}
