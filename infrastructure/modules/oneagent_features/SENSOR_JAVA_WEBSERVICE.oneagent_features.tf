resource "dynatrace_oneagent_features" "SENSOR_JAVA_WEBSERVICE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_WEBSERVICE"
  scope           = "environment"
}
