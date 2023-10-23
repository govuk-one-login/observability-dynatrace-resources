resource "dynatrace_custom_app_enablement" "environment" {
  scope = "environment"
  rum {
    enabled                  = false
    cost_and_traffic_control = 100
  }
}
