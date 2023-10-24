resource "dynatrace_api_detection" "Built-In_TIBCO" {
  api_color       = "#a972cc"
  api_name        = "Built-In TIBCO"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "org.tibco."
    }
  }
}
