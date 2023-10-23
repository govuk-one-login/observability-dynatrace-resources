resource "dynatrace_service_anomalies_v2" "SERVICE-70C56686E39D60B1" {
  scope = "SERVICE-70C56686E39D60B1"
  failure_rate {
    enabled = false
  }
  load_drops {
    enabled = false
  }
  load_spikes {
    enabled = false
  }
  response_time {
    enabled = false
  }
}
