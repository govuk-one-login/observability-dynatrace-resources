resource "dynatrace_api_detection" "Built-In_Go_Database" {
  api_color       = "#fff29a"
  api_name        = "Built-In Go Database"
  technology      = "Go"
  third_party_api = true
  conditions {
    condition {
      base    = "PACKAGE"
      matcher = "BEGINS_WITH"
      pattern = "database"
    }
  }
}
