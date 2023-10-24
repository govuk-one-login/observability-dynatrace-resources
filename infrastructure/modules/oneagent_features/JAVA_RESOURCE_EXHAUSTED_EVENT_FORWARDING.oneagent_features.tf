resource "dynatrace_oneagent_features" "JAVA_RESOURCE_EXHAUSTED_EVENT_FORWARDING" {
  enabled = true
  key     = "JAVA_RESOURCE_EXHAUSTED_EVENT_FORWARDING"
  scope   = "environment"
}
