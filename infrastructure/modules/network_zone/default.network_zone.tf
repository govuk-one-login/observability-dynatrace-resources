resource "dynatrace_network_zone" "default" {
  description                       = "The default network zone. This is the network zone for OneAgents or ActiveGates that do not have any network zone configured."
  num_of_configured_activegates     = 2
  num_of_configured_oneagents       = 2
  num_of_oneagents_from_other_zones = 0
  num_of_oneagents_using            = 2
}
