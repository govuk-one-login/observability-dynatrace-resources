resource "dynatrace_oneagent_features" "SENSOR_JAVA_IMSSOAP_TAGGING_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_IMSSOAP_TAGGING_FORCIBLE"
  scope           = "environment"
}
