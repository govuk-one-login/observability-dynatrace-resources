resource "dynatrace_log_processing" "_Built-in_load_balancer_haproxy_default" {
  enabled   = true
  query     =<<-EOT
    process.technology="haproxy" AND content="Connect from"
  EOT
  rule_name = "[Built-in] load_balancer:haproxy:default"
  processor_definition {
    rule =<<-EOT
      PARSE(content, "TIMESTAMP('MMM d HH:mm:ss')
      SPACE
      LD:'net.host.name'
      SPACE
      LD
      ':'?
      '[' 
      INT:'process.pid'
      ']: Connect from '
      IPADDR:'net.peer.ip'
      ':'
      INT:'net.peer.port'
      SPACE
      'to'
      SPACE
      IPADDR:'net.host.ip'
      ':'
      INT:'net.host.port'
      SPACE
      '('
      LD:'load_balancer.haproxy.frontend_name'
      '/'
      LD:'load_balancer.haproxy.frontend_mode'
      ')'
      LD?")
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "content": "Mar 10 08:59:46 localhost haproxy-stats:[2709]: Connect from 10.176.34.80:37624 to 10.176.40.153:9001 (stats/HTTP)",
          "process.technology": "haproxy"
      })
  }
}
