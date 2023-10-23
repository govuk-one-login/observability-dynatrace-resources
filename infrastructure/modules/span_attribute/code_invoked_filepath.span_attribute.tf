resource "dynatrace_span_attribute" "code_invoked_filepath" {
  key     = "code.invoked.filepath"
  masking = "NOT_MASKED"
}
