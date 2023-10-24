resource "dynatrace_oneagent_features" "SENSOR_NODEJS_IOREDIS_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_IOREDIS_FORCIBLE"
  scope           = "environment"
}
