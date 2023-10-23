resource "dynatrace_span_attribute" "aggregation_duration_sum_micros" {
  key     = "aggregation.duration_sum_micros"
  masking = "NOT_MASKED"
}
