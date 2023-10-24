resource "dynatrace_api_detection" "Built-In_JBoss" {
  api_color       = "#fff29a"
  api_name        = "Built-In JBoss"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "org.jboss."
    }
  }
}
