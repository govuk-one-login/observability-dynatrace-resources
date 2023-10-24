resource "dynatrace_oneagent_features" "SENSOR_JAVA_CASP_FLAW_FINDER" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_JAVA_CASP_FLAW_FINDER"
  scope             = "environment"
}
