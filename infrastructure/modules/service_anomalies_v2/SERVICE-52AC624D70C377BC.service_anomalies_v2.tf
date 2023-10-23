resource "dynatrace_service_anomalies_v2" "SERVICE-52AC624D70C377BC" {
  scope = "SERVICE-52AC624D70C377BC"
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
