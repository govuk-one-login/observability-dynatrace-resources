resource "dynatrace_oneagent_features" "SENSOR_NGINX_MODULE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NGINX_MODULE"
  scope           = "environment"
}
