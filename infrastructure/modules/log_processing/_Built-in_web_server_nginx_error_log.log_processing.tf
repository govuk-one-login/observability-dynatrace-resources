resource "dynatrace_log_processing" "_Built-in_web_server_nginx_error_log" {
  enabled   = true
  query     =<<-EOT
    process.technology="nginx" AND (content="warn" OR content="error" OR content="crit" OR content="alert" OR content="emerg")
  EOT
  rule_name = "[Built-in] web_server:nginx:error_log"
  processor_definition {
    rule =<<-EOT
      PARSE(content, "TIMESTAMP('yyyy/MM/dd HH:mm:ss'):timestamp
      SPACE
      '[' LD:'loglevel' ']'
      SPACE
      INT:'process.pid'
      LD
      'client: ' IPADDR:'net.peer.ip' ',' SPACE
      'server: ' [^,]+:'net.host.name' ', '*
      ('request: ' '\"' LD:'http.method' SPACE LD:'http.target' SPACE LD:'http.flavor' '\"' ','* SPACE*)?
      ('upstream: ' DQS:'web_server.nginx.upstream' ', '* )?
      ('host: ' DQS:'http.host' ', '*)?
      ('referrer: ' DQS:'dt.http.request.header.referer' ', '*)?
      LD*")
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "content": "2022/02/21 13:59:50 [warn] 104#104: *155047 a client request body is buffered to a temporary file /tmp/client-body/0000000198, client: 83.164.160.102, server: account-dev.dynatracelabs.com, request: \"POST /basweb/saml/SSO/alias/rdyn HTTP/2.0\", host: \"account-dev.dynatracelabs.com\", referrer: \"https://sso-dev.dynatracelabs.com/\"",
          "process.technology": "nginx"
      })
  }
}
