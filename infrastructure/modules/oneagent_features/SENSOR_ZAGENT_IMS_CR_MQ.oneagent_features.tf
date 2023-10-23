resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_IMS_CR_MQ" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_IMS_CR_MQ"
  scope           = "environment"
}
