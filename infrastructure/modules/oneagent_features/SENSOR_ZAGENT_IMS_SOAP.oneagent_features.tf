resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_IMS_SOAP" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_IMS_SOAP"
  scope           = "environment"
}
