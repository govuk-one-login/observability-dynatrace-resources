resource "dynatrace_api_detection" "Built-In_Java_MongoDB" {
  api_color       = "#fff29a"
  api_name        = "Built-In Java MongoDB"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.mongodb."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.novus.casbah.mongodb."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "org.bson."
    }
  }
}
