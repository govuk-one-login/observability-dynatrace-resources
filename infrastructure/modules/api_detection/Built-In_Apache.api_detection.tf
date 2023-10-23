resource "dynatrace_api_detection" "Built-In_Apache" {
  api_color       = "#2ab6f4"
  api_name        = "Built-In Apache"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "org.apache."
    }
  }
}
