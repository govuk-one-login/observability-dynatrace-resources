resource "dynatrace_api_detection" "Built-In_NET_MongoDB" {
  api_color       = "#fff29a"
  api_name        = "Built-In .NET MongoDB"
  technology      = "dotNet"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "MongoDB."
    }
  }
}
