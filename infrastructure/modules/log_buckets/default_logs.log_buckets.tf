resource "dynatrace_log_buckets" "default_logs" {
  enabled     = true
  bucket_name = "default_logs"
  matcher     = "*"
  rule_name   = "default"
}
