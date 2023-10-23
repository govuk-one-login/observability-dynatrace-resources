resource "dynatrace_log_processing" "_Built-in_load_balancer_haproxy_tcp" {
  enabled   = true
  query     = "process.technology=\"haproxy\""
  rule_name = "[Built-in] load_balancer:haproxy:tcp"
  processor_definition {
    rule =<<-EOT
      PARSE(content, "LD
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
      ' '
      LD:'load_balancer.haproxy.backend_name' '/'
      LD:'load_balancer.haproxy.server_name' ' '
      INT:'load_balancer.haproxy.tw' '/' 
      INT:'load_balancer.haproxy.tc' '/'
      INT:'load_balancer.haproxy.tt' ' '
      INT:'load_balancer.haproxy.bytes_read' ' ' 
      LD:'load_balancer.haproxy.termination_state' ' ' 
      INT:'load_balancer.haproxy.actconn' '/' 
      INT:'load_balancer.haproxy.feconn' '/' 
      int:'load_balancer.haproxy.beconn' '/' 
      int:'load_balancer.haproxy.srv_conn' '/' 
      int:'load_balancer.haproxy.retries' ' '
      int:'load_balancer.haproxy.srv_queue' '/' 
      int:'load_balancer.haproxy.backend_queue'
      LD?")
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "content": "haproxy[14387]: 10.0.1.2:33313 [06/Feb/2022:12:12:51.443] fnt bck/srv1 0/0/5007 212 -- 0/0/0/0/3 0/0",
          "process.technology": "haproxy"
      })
  }
}
