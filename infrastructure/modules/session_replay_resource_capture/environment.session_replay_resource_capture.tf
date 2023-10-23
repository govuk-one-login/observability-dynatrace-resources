resource "dynatrace_session_replay_resource_capture" "environment" {
  application_id            = "environment"
  enable_resource_capturing = false
}
