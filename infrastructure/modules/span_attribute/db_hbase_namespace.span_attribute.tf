resource "dynatrace_span_attribute" "db_hbase_namespace" {
  key     = "db.hbase.namespace"
  masking = "NOT_MASKED"
}
