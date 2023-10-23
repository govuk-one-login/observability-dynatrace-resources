resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_IMS_ITRA" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_IMS_ITRA"
  scope           = "environment"
}
