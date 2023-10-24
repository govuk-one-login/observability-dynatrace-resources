resource "dynatrace_api_detection" "Built-In_Java_tests" {
  api_color       = "#008cdb"
  api_name        = "Built-In Java tests"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "junit.framework."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "org.junit."
    }
  }
}
