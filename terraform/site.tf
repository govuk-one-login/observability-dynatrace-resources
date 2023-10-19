terraform {
  required_providers {
    dynatrace = {
        version = "1.44.0"
        source = "dynatrace-oss/dynatrace"
    }
  }

  backend "s3" {
    bucket = "di-observability-tfstate"
    key    = "dynatrace-resources.tfstate"
    region = "eu-west-2"
    dynamodb_table = "terraform-state-lock-table"
  }
}