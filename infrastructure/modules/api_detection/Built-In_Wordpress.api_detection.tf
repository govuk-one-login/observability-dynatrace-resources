resource "dynatrace_api_detection" "Built-In_Wordpress" {
  api_color       = "#b4e5f9"
  api_name        = "Built-In Wordpress"
  technology      = "PHP"
  third_party_api = true
  conditions {
    condition {
      base    = "FILE_NAME"
      matcher = "CONTAINS"
      pattern = "wp-includes/"
    }
  }
}
