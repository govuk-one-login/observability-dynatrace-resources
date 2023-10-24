resource "dynatrace_http_monitor" "GOV_UK_Notify_API" {
  name      = "GOV.UK Notify API"
  enabled   = true
  frequency = 5
  locations = [ "GEOLOCATION-F3E06A526BE3B4C4" ]
  anomaly_detection {
    loading_time_thresholds {
      enabled = true
    }
    outage_handling {
      global_outage    = true
      # local_outage   = false
      # retry_on_error = false
      global_outage_policy {
        consecutive_runs = 1
      }
    }
  }
  script {
    request {
      description = "api.notifications.service.gov.uk"
      method      = "GET"
      url         = "https://api.notifications.service.gov.uk"
      configuration {
        # accept_any_certificate = false
        # follow_redirects       = false
      }
      validation {
        rule {
          type            = "httpStatusesList"
          # pass_if_found = false
          value           = ">=400"
        }
      }
    }
  }
}
