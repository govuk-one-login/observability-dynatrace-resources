resource "dynatrace_span_attribute" "db_redis_database_index" {
  key     = "db.redis.database_index"
  masking = "NOT_MASKED"
}
