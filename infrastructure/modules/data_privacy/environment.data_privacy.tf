resource "dynatrace_data_privacy" "environment" {
  application_id = "environment"
  data_collection {
    opt_in_mode_enabled = true
  }
  do_not_track {
    comply_with_do_not_track = true
    do_not_track             = "anonymous"
  }
  masking {
    personal_data_uri_masking_enabled = true
    user_action_masking_enabled       = false
  }
  user_tracking {
    persistent_cookie_enabled = false
  }
}
