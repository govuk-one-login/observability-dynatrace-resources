resource "dynatrace_alerting" "Default_for_ActiveGate_Token_Expiry" {
  name = "Default for ActiveGate Token Expiry"
  filters {
    filter {
      custom {
        title {
          enabled        = true
          case_sensitive = true
          # negate       = false
          operator       = "STRING_EQUALS"
          value          = "ActiveGate Token(s) will expire soon"
        }
      }
    }
  }
  rules {
    rule {
      delay_in_minutes = 0
      include_mode     = "NONE"
      severity_level   = "CUSTOM_ALERT"
    }
  }
}
