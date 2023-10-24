resource "dynatrace_log_timestamp" "environment_Auto-migrated_from_flag_LAConfigUTCAsDefaultContainerTimezone_-_UTC" {
  enabled           = true
  config_item_title = "Auto-migrated from flag LAConfigUTCAsDefaultContainerTimezone - UTC"
  date_time_pattern = ""
  scope             = "environment"
  timezone          = "Etc/UTC"
  matchers {
    matcher {
      attribute = "dt.entity.container_group"
      operator  = "MATCHES"
      values    = [ "*" ]
    }
  }
}
