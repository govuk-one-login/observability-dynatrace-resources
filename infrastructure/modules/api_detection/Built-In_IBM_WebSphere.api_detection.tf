resource "dynatrace_api_detection" "Built-In_IBM_WebSphere" {
  api_color       = "#4fd5e0"
  api_name        = "Built-In IBM WebSphere"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.ibm.websphere."
    }
  }
}
