resource "dynatrace_json_dashboard" "all" {
  for_each = local.dashboard_json
  contents = each.value
}

# Other examples to follow ...