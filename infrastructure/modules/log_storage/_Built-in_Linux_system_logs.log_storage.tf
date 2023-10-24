resource "dynatrace_log_storage" "_Built-in_Linux_system_logs" {
  name            = "[Built-in] Linux system logs"
  enabled         = false
  scope           = "environment"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "/var/log/syslog", "/var/log/messages" ]
    }
  }
}
