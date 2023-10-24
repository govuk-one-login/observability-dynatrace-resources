resource "dynatrace_log_processing" "_Built-in_web_server_nginx_access_log" {
  enabled   = true
  query     = "process.technology=\"nginx\""
  rule_name = "[Built-in] web_server:nginx:access_log"
  processor_definition {
    rule =<<-EOT
      PARSE(content, "IPADDR:'net.peer.ip'
      ' - '
      LD:'enduser.id'
      ' [' HTTPDATE:timestamp ']'
      SPACE
      '\"'
      LD:'http.method'
      SPACE
      LD:'http.target'
      SPACE
      LD:'http.flavor'
      '\"'
      SPACE
      INT:'http.status_code'
      SPACE
      INT:'http.response_content_length'
      SPACE
      '\"' LD:'http.request.header.referrer' '\"'
      SPACE
      '\"' LD:'http.user_agent' '\"'
      // nginx-ingress additional attributes
      (SPACE INT:'http.request_content_length'
       SPACE DOUBLE:'web_server.nginx.request_time' 
       SPACE '[' LD*:'web_server.nginx.proxy_upstream_name' ']'
       SPACE '[' LD*:'web_server.nginx.proxy_alternative_upstream_name' ']' 
       SPACE NSPACE*:'web_server.nginx.upstream_addr' 
       SPACE INT:'web_server.nginx.upstream_response_length'
       SPACE DOUBLE:'web_server.nginx.upstream_response_time'
       SPACE INT:'web_server.nginx.upstream_status' 
       SPACE LD:'web_server.nginx.req_id')?
      (SPACE LD)? (EOL | EOF)")
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "content": "10.176.50.9 - Berbelek [21/Feb/2022:11:16:47 +0000] \"GET /v1/technologies/google-cloud-monitoring-and-cloud-logging/releases/ HTTP/1.1\" 200 397 \"-\" \"ruxit server\" 455 0.002 [hub-hub-cluster-api-80] [] 10.179.136.32:80 397 0.004 200 b24eadc996a6a52913375f56bba7fd22",
          "process.technology": "nginx"
      })
  }
}
