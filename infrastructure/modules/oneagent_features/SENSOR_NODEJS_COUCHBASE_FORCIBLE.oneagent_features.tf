resource "dynatrace_oneagent_features" "SENSOR_NODEJS_COUCHBASE_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_COUCHBASE_FORCIBLE"
  scope           = "environment"
}
