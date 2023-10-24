resource "dynatrace_span_attribute" "code_filepath" {
  key     = "code.filepath"
  masking = "NOT_MASKED"
}
