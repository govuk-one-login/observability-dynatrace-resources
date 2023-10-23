resource "dynatrace_api_detection" "Built-In_Go_Standard_Library" {
  api_color       = "#4fd5e0"
  api_name        = "Built-In Go Standard Library"
  technology      = "Go"
  third_party_api = true
  conditions {
    condition {
      base    = "PACKAGE"
      matcher = "BEGINS_WITH"
      pattern = "runtime"
    }
    condition {
      base    = "PACKAGE"
      matcher = "BEGINS_WITH"
      pattern = "io"
    }
    condition {
      base    = "PACKAGE"
      matcher = "BEGINS_WITH"
      pattern = "os"
    }
    condition {
      base    = "PACKAGE"
      matcher = "BEGINS_WITH"
      pattern = "net"
    }
    condition {
      base    = "PACKAGE"
      matcher = "BEGINS_WITH"
      pattern = "sync"
    }
  }
}
