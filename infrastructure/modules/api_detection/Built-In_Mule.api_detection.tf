resource "dynatrace_api_detection" "Built-In_Mule" {
  api_color       = "#008cdb"
  api_name        = "Built-In Mule"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "org.mule."
    }
  }
}
