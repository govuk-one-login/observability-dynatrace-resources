resource "dynatrace_oneagent_features" "SENSOR_NODEJS_CRYPTO" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_CRYPTO"
  scope           = "environment"
}
