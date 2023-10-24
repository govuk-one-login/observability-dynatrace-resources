resource "dynatrace_log_storage" "_Built-in_Kubernetes_default_namespaces_logs" {
  name            = "[Built-in] Kubernetes default namespaces logs"
  enabled         = false
  scope           = "environment"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "k8s.namespace.name"
      operator  = "MATCHES"
      values    = [ "default", "dynatrace", "kube-node-lease", "kube-public", "kube-system" ]
    }
  }
}
