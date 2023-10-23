resource "dynatrace_api_detection" "Built-In_NET_Azure_Service_Fabric" {
  api_color       = "#fff29a"
  api_name        = "Built-In .NET Azure Service Fabric"
  technology      = "dotNet"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "Microsoft.ServiceFabric."
    }
  }
}
