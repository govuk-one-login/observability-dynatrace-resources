resource "dynatrace_oneagent_features" "SENSOR_PHP_DRUPAL" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PHP_DRUPAL"
  scope             = "environment"
}
