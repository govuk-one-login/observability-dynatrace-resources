resource "dynatrace_span_attribute" "db_mongodb_collection" {
  key     = "db.mongodb.collection"
  masking = "NOT_MASKED"
}
