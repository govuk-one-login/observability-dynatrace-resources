resource "dynatrace_oneagent_features" "SENSOR_JAVA_THRIFT" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_THRIFT"
  scope           = "environment"
}
