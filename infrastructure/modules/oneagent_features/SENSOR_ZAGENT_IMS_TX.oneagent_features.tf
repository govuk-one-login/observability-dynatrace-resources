resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_IMS_TX" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_IMS_TX"
  scope           = "environment"
}
