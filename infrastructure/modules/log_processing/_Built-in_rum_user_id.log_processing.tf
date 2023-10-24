resource "dynatrace_log_processing" "_Built-in_rum_user_id" {
  enabled   = true
  query     = "dt.rum.user_id"
  rule_name = "[Built-in] rum:user_id"
  processor_definition {
    rule = "PARSE(content, \"DATA? 'dt.rum.user_id' '\\\"'?  SPACE? [:=]+ SPACE? DQS:dt.rum.user_id\")"
  }
  rule_testing {
    sample_log = jsonencode({
          "content": "2022-05-10 10:45:00 UTC [!dt dt.rum.user_id=\"John Doe\"] This is a sample log with user id",
          "event.type": "LOG",
          "loglevel": "NONE",
          "timestamp": "1647504114437"
      })
  }
}
