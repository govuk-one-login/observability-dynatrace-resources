resource "dynatrace_span_attribute" "aggregation_latest_endtime_micros" {
  key     = "aggregation.latest_endtime_micros"
  masking = "NOT_MASKED"
}
