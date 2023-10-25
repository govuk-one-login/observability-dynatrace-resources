locals {
  dashboards_files = fileset("${path.module}/dashboards", "*.json")
  dashboard_json   = { for f in local.dashboards_files : f => file("${path.module}/dashboards/${f}") }
}