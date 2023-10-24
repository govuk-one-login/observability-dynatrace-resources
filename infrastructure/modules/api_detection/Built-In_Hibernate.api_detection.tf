resource "dynatrace_api_detection" "Built-In_Hibernate" {
  api_color       = "#522273"
  api_name        = "Built-In Hibernate"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "org.hibernate."
    }
  }
}
