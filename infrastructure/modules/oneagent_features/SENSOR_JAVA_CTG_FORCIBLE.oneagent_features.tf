resource "dynatrace_oneagent_features" "SENSOR_JAVA_CTG_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_CTG_FORCIBLE"
  scope           = "environment"
}
