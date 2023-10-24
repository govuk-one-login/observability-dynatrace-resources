resource "dynatrace_api_detection" "Built-In_NET_IBM_MQ" {
  api_color       = "#ffd0ab"
  api_name        = "Built-In .NET IBM MQ"
  technology      = "dotNet"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "IBM.WMQ."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "IBM.XMS."
    }
  }
}
