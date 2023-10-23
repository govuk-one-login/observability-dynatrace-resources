resource "dynatrace_oneagent_features" "SENSOR_SDK_JAVA_DATABASE_REQUEST" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_SDK_JAVA_DATABASE_REQUEST"
  scope           = "environment"
}
