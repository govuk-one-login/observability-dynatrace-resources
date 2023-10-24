resource "dynatrace_api_detection" "Built-In_NET_Logging" {
  api_color       = "#ffa86c"
  api_name        = "Built-In .NET Logging"
  technology      = "dotNet"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "Microsoft.Extensions.Logging."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "log4net."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "Microsoft.Practices.EnterpriseLibrary.Logging."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "Microsoft.EnterpriseInstrumentation.EventSource."
    }
  }
}
