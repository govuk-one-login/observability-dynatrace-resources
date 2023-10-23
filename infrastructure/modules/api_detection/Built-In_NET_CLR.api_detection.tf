resource "dynatrace_api_detection" "Built-In_NET_CLR" {
  api_color       = "#7c38a1"
  api_name        = "Built-In .NET CLR"
  technology      = "dotNet"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "System."
    }
  }
}
