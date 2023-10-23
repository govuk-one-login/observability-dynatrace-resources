resource "dynatrace_oneagent_features" "JAVA_MQ_TAGGING_FORCIBLE" {
  enabled = true
  key     = "JAVA_MQ_TAGGING_FORCIBLE"
  scope   = "environment"
}
