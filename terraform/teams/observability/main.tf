resource "dynatrace_json_dashboard" "all" {
  for_each = local.dashboard_json
  contents = each.value
}

resource "dynatrace_management_zone_v2" "all" {
  name        = "<aws_account_name>"
  description = "Resources & Services running in <aws_account_name> (<aws_account_id)"
  rules {
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(CUSTOM_DEVICE),fromRelationships.isAccessibleBy(type(AWS_CREDENTIALS),awsAccountId(<aws_account_id>))"
      attribute_rule {
        entity_type = ""
        attribute_conditions {
          condition {
            case_sensitive = ""
            key            = ""
            operator       = ""
            string_value   = ""
          }
        }
      }
    }
    rule {
      type            = "ME"
      enabled         = true
      entity_selector = ""
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        attribute_conditions {
          condition {
            key            = "PROCESS_GROUP_PREDEFINED_METADATA"
            operator       = "CONTAINS"
            dynamic_key    = "AWS_ECS_CLUSTER"
            string_value   = "<aws_account_id>"
            case_sensitive = false
          }
        }
      }
    }
    rule {
      type            = "ME"
      enabled         = true
      entity_selector = ""
      attribute_rule {
        entity_type = "AWS_NETWORK_LOAD_BALANCER"
        attribute_conditions {
          condition {
            key            = "AWS_ACCOUNT_ID"
            operator       = "EQUALS"
            string_value   = "<aws_account_id>"
            case_sensitive = false
          }
        }
      }
    }
    rule {
      type            = "ME"
      enabled         = true
      entity_selector = ""
      attribute_rule {
        entity_type = "AWS_APPLICATION_LOAD_BALANCER"
        attribute_conditions {
          condition {
            key            = "AWS_ACCOUNT_ID"
            operator       = "EQUALS"
            string_value   = "<aws_account_id>"
            case_sensitive = false
          }
        }
      }
    }
    rule {
      type            = "ME"
      enabled         = true
      entity_selector = ""
      attribute_rule {
        entity_type = "AWS_AUTO_SCALING_GROUP"
        attribute_conditions {
          condition {
            key            = "AWS_ACCOUNT_ID"
            operator       = "EQUALS"
            string_value   = "<aws_account_id>"
            case_sensitive = false
          }
        }
      }
    }
    rule {
      type            = "ME"
      enabled         = true
      entity_selector = ""
      attribute_rule {
        entity_type = "AWS_RELATIONAL_DATABASE_SERVICE"
        attribute_conditions {
          condition {
            key            = "AWS_ACCOUNT_ID"
            operator       = "EQUALS"
            string_value   = "<aws_account_id>"
            case_sensitive = false
          }
        }
      }
    }
    rule {
      type            = "ME"
      enabled         = true
      entity_selector = ""
      attribute_rule {
        entity_type = "AWS_CLASSIC_LOAD_BALANCER"
        attribute_conditions {
          condition {
            key            = "AWS_ACCOUNT_ID"
            operator       = "EQUALS"
            string_value   = "<aws_account_id>"
            case_sensitive = false
          }
        }
      }
    }
    rule {
      type            = "ME"
      enabled         = true
      entity_selector = ""
      attribute_rule {
        entity_type                 = "SERVICE"
        service_to_host_propagation = true
        service_to_pgpropagation    = true
        attribute_conditions {
          condition {
            key            = "PROCESS_GROUP_PREDEFINED_METADATA"
            operator       = "CONTAINS"
            dynamic_key    = "AWS_ECS_CLUSTER"
            string_value   = "<aws_account_id>"
            case_sensitive = false
          }
        }
      }
    }
    rule {
      type            = "ME"
      enabled         = true
      entity_selector = ""
      attribute_rule {
        entity_type           = "HOST"
        host_to_pgpropagation = true
        attribute_conditions {
          condition {
            key            = "AWS_ACCOUNT_ID"
            operator       = "EQUALS"
            string_value   = "<aws_account_id>"
            case_sensitive = false
          }
        }
      }
    }
    rule {
      type            = "ME"
      enabled         = true
      entity_selector = ""
      attribute_rule {
        entity_type = "AWS_ACCOUNT"
        attribute_conditions {
          condition {
            key            = "AWS_ACCOUNT_ID"
            operator       = "EQUALS"
            string_value   = "<aws_account_id>"
            case_sensitive = false
          }
        }
      }
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(SERVICE),fromRelationships.runsOn(type(AWS_LAMBDA_FUNCTION),fromRelationships.isAccessibleBy(type(AWS_CREDENTIALS),awsAccountId(<aws_account_id>)))"
      attribute_rule {
        entity_type = ""
        attribute_conditions {
          condition {
            key            = ""
            operator       = ""
            string_value   = ""
            case_sensitive = false
          }
        }
      }
    }
  }
}

# Other examples to follow ...