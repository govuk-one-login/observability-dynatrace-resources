module "alerting" {
  source = "./modules/alerting"
}

module "api_detection" {
  source = "./modules/api_detection"
}

module "application_detection_rule" {
  source = "./modules/application_detection_rule"
}

module "application_error_rules" {
  source = "./modules/application_error_rules"
}

module "audit_log" {
  source = "./modules/audit_log"
}

module "aws_credentials" {
  source = "./modules/aws_credentials"
}

module "business_events_buckets" {
  source = "./modules/business_events_buckets"
}

module "cloudapp_workloaddetection" {
  source = "./modules/cloudapp_workloaddetection"
}

module "custom_app_enablement" {
  source = "./modules/custom_app_enablement"
}

module "custom_units" {
  source = "./modules/custom_units"
}

module "dashboards_general" {
  source = "./modules/dashboards_general"
}

module "data_privacy" {
  source = "./modules/data_privacy"
}

module "extension_execution_controller" {
  source = "./modules/extension_execution_controller"
}

module "generic_relationships" {
  source = "./modules/generic_relationships"
}

module "generic_types" {
  source = "./modules/generic_types"
}

module "host_monitoring" {
  source = "./modules/host_monitoring"
}

module "key_requests" {
  source = "./modules/key_requests"
}

module "log_buckets" {
  source = "./modules/log_buckets"
}

module "log_events" {
  source = "./modules/log_events"
}

module "log_processing" {
  source = "./modules/log_processing"
}

module "log_timestamp" {
  source = "./modules/log_timestamp"
}

module "management_zone_v2" {
  source = "./modules/management_zone_v2"
}

module "metric_events" {
  source = "./modules/metric_events"
}

module "mobile_app_enablement" {
  source = "./modules/mobile_app_enablement"
}

module "mobile_application" {
  source = "./modules/mobile_application"
}

module "oneagent_features" {
  source = "./modules/oneagent_features"
}

module "oneagent_updates" {
  source = "./modules/oneagent_updates"
}

module "os_services" {
  source = "./modules/os_services"
}

module "ownership_config" {
  source = "./modules/ownership_config"
}

module "request_namings" {
  source = "./modules/request_namings"
}

module "resource_attributes" {
  source = "./modules/resource_attributes"
}

module "rum_host_headers" {
  source = "./modules/rum_host_headers"
}

module "rum_ip_determination" {
  source = "./modules/rum_ip_determination"
}

module "service_anomalies_v2" {
  source = "./modules/service_anomalies_v2"
}

module "session_replay_web_privacy" {
  source = "./modules/session_replay_web_privacy"
}

module "slo_normalization" {
  source = "./modules/slo_normalization"
}

module "slo_v2" {
  source = "./modules/slo_v2"
}

module "span_attribute" {
  source = "./modules/span_attribute"
}

module "span_entry_point" {
  source = "./modules/span_entry_point"
}

module "span_events" {
  source = "./modules/span_events"
}

module "unified_services_opentel" {
  source = "./modules/unified_services_opentel"
}

module "web_app_enablement" {
  source = "./modules/web_app_enablement"
}

module "web_app_key_performance_custom" {
  source = "./modules/web_app_key_performance_custom"
}

module "web_app_key_performance_load" {
  source = "./modules/web_app_key_performance_load"
}

module "web_app_key_performance_xhr" {
  source = "./modules/web_app_key_performance_xhr"
}

module "web_application" {
  source = "./modules/web_application"
}

