resource "dynatrace_oneagent_features" "SENSOR_NODEJS_MODULESUBSTITUTION" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_MODULESUBSTITUTION"
  scope           = "environment"
}
