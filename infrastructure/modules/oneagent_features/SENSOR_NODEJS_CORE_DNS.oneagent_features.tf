resource "dynatrace_oneagent_features" "SENSOR_NODEJS_CORE_DNS" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_CORE_DNS"
  scope           = "environment"
}
