resource "dynatrace_log_storage" "_Built-in_Windows_system_application_and_security_logs" {
  name            = "[Built-in] Windows system, application, and security logs"
  enabled         = false
  scope           = "environment"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "Windows System Log", "Windows Security Log", "Windows Application Log" ]
    }
  }
}
