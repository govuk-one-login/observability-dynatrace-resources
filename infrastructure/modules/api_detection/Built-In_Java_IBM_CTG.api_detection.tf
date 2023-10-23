resource "dynatrace_api_detection" "Built-In_Java_IBM_CTG" {
  api_color       = "#c9a000"
  api_name        = "Built-In Java IBM CTG"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.ibm.ctg."
    }
  }
}
