resource "dynatrace_log_processing" "_Built-in_load_balancer_haproxy_error" {
  enabled   = true
  query     = "process.technology=\"haproxy\""
  rule_name = "[Built-in] load_balancer:haproxy:error"
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
      ']: '
      IPADDR:'net.peer.ip'
      ':'
      INT:'net.peer.port'
      ' [' 
      TIMESTAMP('dd/MMM/yyyy:hh:mm:ss.f'):timestamp
      '] '
      LD:'load_balancer.haproxy.frontend_name'
      '/'
      LD:'load_balancer.haproxy.bind_name'
      ':'
      LD?")
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "content": "Mar  9 09:25:23 localhost haproxy-http-in:[13049]: 10.176.33.199:44236 [09/Mar/2022:09:25:23.680] http-in/2: SSL handshake failure",
          "process.technology": "haproxy"
      })
  }
}
