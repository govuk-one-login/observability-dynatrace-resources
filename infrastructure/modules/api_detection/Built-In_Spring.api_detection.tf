resource "dynatrace_api_detection" "Built-In_Spring" {
  api_color       = "#debbf3"
  api_name        = "Built-In Spring"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "org.springframework."
    }
  }
}
