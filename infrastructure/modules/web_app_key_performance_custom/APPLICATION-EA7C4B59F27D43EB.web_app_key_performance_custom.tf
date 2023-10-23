resource "dynatrace_web_app_key_performance_custom" "APPLICATION-EA7C4B59F27D43EB" {
  scope = "APPLICATION-EA7C4B59F27D43EB"
  thresholds {
    frustrating_threshold_seconds = 12
    tolerated_threshold_seconds   = 3
  }
}
