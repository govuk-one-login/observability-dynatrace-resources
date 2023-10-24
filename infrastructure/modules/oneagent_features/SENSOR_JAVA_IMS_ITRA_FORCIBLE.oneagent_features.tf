resource "dynatrace_oneagent_features" "SENSOR_JAVA_IMS_ITRA_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_IMS_ITRA_FORCIBLE"
  scope           = "environment"
}
