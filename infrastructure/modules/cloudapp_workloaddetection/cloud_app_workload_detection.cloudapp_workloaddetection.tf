resource "dynatrace_cloudapp_workloaddetection" "cloud_app_workload_detection" {
  cloud_foundry {
    enabled = true
  }
  docker {
    enabled = true
  }
  kubernetes {
    enabled = true
    filters {
      filter {
        enabled = true
        inclusion_toggles {
          inc_basepod   = false
          inc_container = true
          inc_namespace = true
          inc_product   = true
          inc_stage     = true
        }
        match_filter {
          match_operator = "EXISTS"
        }
      }
    }
  }
}
