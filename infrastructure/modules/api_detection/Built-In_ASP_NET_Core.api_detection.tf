resource "dynatrace_api_detection" "Built-In_ASP_NET_Core" {
  api_color       = "#008cdb"
  api_name        = "Built-In ASP.NET Core"
  technology      = "dotNet"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "Microsoft.AspNetCore."
    }
  }
}
