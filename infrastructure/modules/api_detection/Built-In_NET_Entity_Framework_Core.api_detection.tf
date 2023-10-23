resource "dynatrace_api_detection" "Built-In_NET_Entity_Framework_Core" {
  api_color       = "#4fd5e0"
  api_name        = "Built-In .NET Entity Framework Core"
  technology      = "dotNet"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "Microsoft.EntityFrameworkCore."
    }
  }
}
