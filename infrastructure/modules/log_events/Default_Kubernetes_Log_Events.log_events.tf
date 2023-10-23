resource "dynatrace_log_events" "Default_Kubernetes_Log_Events" {
  enabled = true
  query   = "event.type=\"k8s\""
  summary = "Default Kubernetes Log Events"
  event_template {
    description = ""
    event_type  = "INFO"
    title       = "{content}"
    metadata {
      item {
        metadata_key   = "status"
        metadata_value = "{status}"
      }
      item {
        metadata_key   = "dt.entity.kubernetes_cluster"
        metadata_value = "{dt.entity.kubernetes_cluster}"
      }
      item {
        metadata_key   = "dt.entity.cloud_application_namespace"
        metadata_value = "{dt.entity.cloud_application_namespace}"
      }
      item {
        metadata_key   = "dt.entity.kubernetes_node"
        metadata_value = "{dt.entity.kubernetes_node}"
      }
      item {
        metadata_key   = "dt.entity.cloud_application"
        metadata_value = "{dt.entity.cloud_application}"
      }
      item {
        metadata_key   = "dt.entity.cloud_application_instance"
        metadata_value = "{dt.entity.cloud_application_instance}"
      }
      item {
        metadata_key   = "dt.kubernetes.cluster.name"
        metadata_value = "{dt.kubernetes.cluster.name}"
      }
      item {
        metadata_key   = "k8s.namespace.name"
        metadata_value = "{k8s.namespace.name}"
      }
      item {
        metadata_key   = "dt.kubernetes.node.name"
        metadata_value = "{dt.kubernetes.node.name}"
      }
      item {
        metadata_key   = "dt.kubernetes.workload.name"
        metadata_value = "{dt.kubernetes.workload.name}"
      }
      item {
        metadata_key   = "k8s.pod.name"
        metadata_value = "{k8s.pod.name}"
      }
      item {
        metadata_key   = "dt.kubernetes.event.reason"
        metadata_value = "{dt.kubernetes.event.reason}"
      }
      item {
        metadata_key   = "dt.kubernetes.event.message"
        metadata_value = "{content}"
      }
      item {
        metadata_key   = "dt.kubernetes.event.involved_object.kind"
        metadata_value = "{dt.kubernetes.event.involved_object.kind}"
      }
      item {
        metadata_key   = "dt.kubernetes.event.involved_object.name"
        metadata_value = "{dt.kubernetes.event.involved_object.name}"
      }
      item {
        metadata_key   = "dt.kubernetes.event.count"
        metadata_value = "{dt.kubernetes.event.count}"
      }
      item {
        metadata_key   = "dt.kubernetes.event.first_seen"
        metadata_value = "{dt.kubernetes.event.first_seen}"
      }
      item {
        metadata_key   = "dt.kubernetes.event.last_seen"
        metadata_value = "{dt.kubernetes.event.last_seen}"
      }
      item {
        metadata_key   = "dt.kubernetes.event.uid"
        metadata_value = "{dt.kubernetes.event.uid}"
      }
      item {
        metadata_key   = "dt.event.group_label"
        metadata_value = "{dt.kubernetes.event.reason}"
      }
      item {
        metadata_key   = "dt.event.is_rootcause_relevant"
        metadata_value = "{dt.events.root_cause_relevant}"
      }
      item {
        metadata_key   = "dt.event.allow_davis_merge"
        metadata_value = "{dt.events.root_cause_relevant}"
      }
    }
  }
}
