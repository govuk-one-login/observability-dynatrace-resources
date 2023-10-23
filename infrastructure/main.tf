module "alerting" {
  source = "./modules/alerting"
}

module "api_detection" {
  source = "./modules/api_detection"
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

module "dashboards_general" {
  source = "./modules/dashboards_general"
}

module "data_privacy" {
  source = "./modules/data_privacy"
}

module "generic_relationships" {
  source = "./modules/generic_relationships"
}

module "generic_types" {
  source = "./modules/generic_types"
}

module "http_monitor" {
  source = "./modules/http_monitor"
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

module "log_storage" {
  source = "./modules/log_storage"
}

module "log_timestamp" {
  source = "./modules/log_timestamp"
}

module "mobile_app_enablement" {
  source = "./modules/mobile_app_enablement"
}

module "network_zone" {
  source = "./modules/network_zone"
}

module "oneagent_features" {
  source = "./modules/oneagent_features"
}

module "os_services" {
  source = "./modules/os_services"
}

module "ownership_config" {
  source = "./modules/ownership_config"
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

module "session_replay_resource_capture" {
  source = "./modules/session_replay_resource_capture"
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

