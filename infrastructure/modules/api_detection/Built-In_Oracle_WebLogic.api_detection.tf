resource "dynatrace_api_detection" "Built-In_Oracle_WebLogic" {
  api_color       = "#7c38a1"
  api_name        = "Built-In Oracle WebLogic"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.weblogic."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "weblogic."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "bea."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.bea."
    }
  }
}
