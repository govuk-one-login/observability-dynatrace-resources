resource "dynatrace_business_events_buckets" "default" {
  enabled     = true
  bucket_name = "default_bizevents"
  matcher     = "*"
  rule_name   = "default"
}
