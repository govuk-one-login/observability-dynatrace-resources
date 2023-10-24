resource "dynatrace_slo_v2" "My_new_synthetic_objective" {
  name              = "My new synthetic objective"
  enabled           = true
  evaluation_type   = "AGGREGATE"
  evaluation_window = "-1w"
  filter            = "type(\"SYNTHETIC_TEST\")"
  metric_expression = "(builtin:synthetic.browser.availability.location.total:splitBy())"
  metric_name       = "my_new_synthetic_objective"
  target_success    = 95
  target_warning    = 96
  error_budget_burn_rate {
    burn_rate_visualization_enabled = true
    fast_burn_threshold             = 10
  }
}
