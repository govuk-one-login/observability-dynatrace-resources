resource "dynatrace_web_app_key_performance_xhr" "APPLICATION-EA7C4B59F27D43EB" {
  kpm   = "VISUALLY_COMPLETE"
  scope = "APPLICATION-EA7C4B59F27D43EB"
  fallback_thresholds {
    frustrating_fallback_threshold_seconds = 12
    tolerated_fallback_threshold_seconds   = 3
  }
  thresholds {
    frustrating_threshold_seconds = 12
    tolerated_threshold_seconds   = 3
  }
}
