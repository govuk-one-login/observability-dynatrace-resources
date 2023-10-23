resource "dynatrace_log_processing" "_Built-in_load_balancer_haproxy_http" {
  enabled   = true
  query     =<<-EOT
    process.technology="haproxy" AND (content="HTTP" OR content="<BADREQ>")
  EOT
  rule_name = "[Built-in] load_balancer:haproxy:http"
  processor_definition {
    rule =<<-EOT
      PARSE(content, "TIMESTAMP('MMM d HH:mm:ss')
      SPACE
      LD:'net.host.name'
      SPACE
      LD
      ':'? '[' 
      INT:'process.pid'
      ']: '
      IPADDR:'net.peer.ip'
      ':'
      INT:'net.peer.port'
      SPACE
      '[' 
      TIMESTAMP('dd/MMM/yyyy:hh:mm:ss.f'):timestamp
      '] '
      LD:'load_balancer.haproxy.frontend_name' 
      SPACE
      LD:'load_balancer.haproxy.backend_name' 
      '/'
      LD:'load_balancer.haproxy.server_name' 
      SPACE
      INT:'load_balancer.haproxy.tr' '/' 
      INT:'load_balancer.haproxy.tw' '/' 
      INT:'load_balancer.haproxy.tc' '/' 
      INT:'load_balancer.haproxy.ts' '/' 
      INT:'load_balancer.haproxy.ta' 
      SPACE
      'HTTP_STATUS '?
      INT:'http.status_code' SPACE 
      INT:'load_balancer.haproxy.bytes_read' SPACE 
      LD:'load_balancer.haproxy.captured_request_cookie' SPACE 
      LD:'load_balancer.haproxy.captured_response_cookie' SPACE 
      LD:'load_balancer.haproxy.termination_state' SPACE
      INT:'load_balancer.haproxy.actconn' '/' 
      INT:'load_balancer.haproxy.feconn' '/' 
      int:'load_balancer.haproxy.beconn' '/' 
      int:'load_balancer.haproxy.srv_conn' '/' 
      int:'load_balancer.haproxy.retries' SPACE
      int:'load_balancer.haproxy.srv_queue' '/' 
      int:'load_balancer.haproxy.backend_queue' SPACE
      (('-' | ('{'  LD?:'load_balancer.haproxy.captured_request_headers' '}') ) SPACE)?
      (('-' | ('{'  LD?:'load_balancer.haproxy.captured_response_headers' '}') ) SPACE)?
      '\"'
      ('<BADREQ>' | (LD:'http.method' SPACE LD:'http.target' SPACE LD:'http.flavor'))
      '\"' 
      LD?")
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "content": "Feb 17 11:05:12 localhost haproxy-http-in:[2190]: 54.80.168.64:44104 [17/Feb/2022:11:05:11.886] http-in~ collector_log_ingest_backend/psg0 998/0/0/2/1000 HTTP_STATUS 204 337 - - ---- 17/15/0/0/0 0/0 {624|||ymv35727.dev.dynatracelabs.com} {|} \"POST /api/v2/logs/ingest HTTP/1.1\" TLS_AES_256_GCM_SHA384 TLSv1.3",
          "process.technology": "haproxy"
      })
  }
}
