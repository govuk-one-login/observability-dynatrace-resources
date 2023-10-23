resource "dynatrace_oneagent_features" "SENSOR_JAVA_EXTERNALCALLS_REDIS" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_EXTERNALCALLS_REDIS"
  scope           = "environment"
}
