resource "dynatrace_web_app_enablement" "environment" {
  application_id = "environment"
  rum {
    enabled                  = false
    cost_and_traffic_control = 100
  }
  session_replay {
    enabled                  = false
    cost_and_traffic_control = 100
  }
}
