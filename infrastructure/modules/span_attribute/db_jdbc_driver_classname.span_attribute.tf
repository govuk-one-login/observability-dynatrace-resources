resource "dynatrace_span_attribute" "db_jdbc_driver_classname" {
  key     = "db.jdbc.driver_classname"
  masking = "NOT_MASKED"
}
