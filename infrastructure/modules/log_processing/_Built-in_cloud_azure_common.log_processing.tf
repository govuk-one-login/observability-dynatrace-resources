resource "dynatrace_log_processing" "_Built-in_cloud_azure_common" {
  enabled   = true
  query     = "cloud.provider=\"azure\""
  rule_name = "[Built-in] cloud:azure:common"
  processor_definition {
    rule =<<-EOT
      USING(content, INOUT log.source:STRING?, INOUT cloud.region:STRING?, INOUT azure.resource.id:STRING?, INOUT azure.resource.group:STRING?, INOUT azure.resource.type:STRING?, INOUT azure.resource.name:STRING?, INOUT azure.subscription:STRING?)
      | FIELDS_ADD(__contentJson:parse(content, "JSON{
                STRING: time,
                STRING: resourceId,
                STRING: location,
                STRING: Region,
                STRING: category,
                JSON {
                  STRING: eventCategory,
                  DATA: message,
                  DATA: functionName,
                  DATA: hostInstanceId,
                  DATA: hostVersion,
                  DATA: pod,
                  DATA: url,
                  DATA: clientProtocol,
                  DATA: method,
                  DATA: responseCode,
                  DATA: error_code,
                  DATA: event_class,
                  DATA: event_subclass,
                  DATA: user,
                  DATA: host,
                  DATA: errorLevel,
                  DATA: DatabaseName,
                DATA: db,
                DATA: sql_text
                }: properties,
                JSON {
                  JSON {
                    DATA:'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name'
                  }: claims
                }: identity,
                DATA:'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name',
                DATA: callerIpAddress,
                DATA: EventName,
                DATA: EventTimeString,
               (INT:i |STRING:s): loglevel,
                (INT:i |STRING:s): level,
                (INT:i |STRING:s): Level,
                STRING: resultType,
                STRING: operationName,
                STRING: resultSignature
                }:contentJson"))
              | FIELDS_ADD(
                __resource_id: coalesce(azure.resource.id, __contentJson["resourceId"]))
              | FIELDS_ADD(
                __parsed_resource_id: parse(upper(__resource_id), "'/SUBSCRIPTIONS/' LD:subscription '/RESOURCEGROUPS/' LD:resourceGroup '/PROVIDERS/' LD:PROVIDER '/' LD:TYPE_NAME '/' LD:TYPE
                               ('/' LD:TYPE_2_NAME '/' LD:TYPE_2  ('/' LD:TYPE_3_NAME '/' LD:TYPE_3  ('/' LD:TYPE_4_NAME '/' LD:TYPE_4  )? )? )?  EOF"))
              | FIELDS_ADD(
                __resource_type: array_join(array_remove_nulls([__parsed_resource_id["PROVIDER"], __parsed_resource_id["TYPE_NAME"], __parsed_resource_id["TYPE_2_NAME"], __parsed_resource_id["TYPE_3_NAME"], __parsed_resource_id["TYPE_4_NAME"]]), '/'),
                __resource_name: coalesce(__parsed_resource_id["TYPE"], __parsed_resource_id["TYPE_2"], __parsed_resource_id["TYPE_3"], __parsed_resource_id["TYPE_4"]),
                __resource_name_full: array_join( array_remove_nulls([__parsed_resource_id["TYPE"], __parsed_resource_id["TYPE_2"], __parsed_resource_id["TYPE_3"], __parsed_resource_id["TYPE_4"] ]), "/"))
              | FIELDS_ADD(
                azure.resource.id: __resource_id,
                azure.resource.group: coalesce(__parsed_resource_id["resourceGroup"], azure.resource.group),
                azure.resource.type: coalesce(__resource_type, azure.resource.type),
                azure.resource.name: coalesce(__resource_name_full, azure.resource.name),
                azure.subscription: coalesce(__parsed_resource_id["subscription"], azure.subscription))
              | FIELDS_ADD(
                cloud.region: coalesce(__contentJson["location"], __contentJson["Region"], cloud.region),
                timestamp: PARSE(__contentJson["time"], "(TIMESTAMP('yyyy-MM-ddTHH:mm:ss.fZ'):time|TIMESTAMP('yyyy-MM-ddTHH:mm:ssZ'):time)"),
                __category: __contentJson["category"])
              | FIELDS_ADD(
                log.source: IF(IS_NULL(__contentJson["properties"]["eventCategory"]), __category, 'Activity Log - ' + __category),
                __kind: upper(__category))
              | FIELDS_ADD(
                __resource_id_level_4: if ( __parsed_resource_id["TYPE_4_NAME"] is not null, '/SUBSCRIPTIONS/' + __parsed_resource_id["subscription"] + '/RESOURCEGROUPS/' + __parsed_resource_id["resourceGroup"] + '/PROVIDERS/'  + __parsed_resource_id["PROVIDER"]
                          +  '/'  + __parsed_resource_id["TYPE_NAME"] +  '/' +  __parsed_resource_id["TYPE"] +  '/'  + __parsed_resource_id["TYPE_2_NAME"] +  '/'+  __parsed_resource_id["TYPE_2"]
                          +  '/'  + __parsed_resource_id["TYPE_3_NAME"] +  '/' +  __parsed_resource_id["TYPE_3"] +  '/'  + __parsed_resource_id["TYPE_4_NAME"] +  '/'+  __parsed_resource_id["TYPE_4"]),
                __resource_id_level_3: if ( IS_NOT_NULL(__parsed_resource_id["TYPE_3_NAME"]), '/SUBSCRIPTIONS/' + __parsed_resource_id["subscription"] + '/RESOURCEGROUPS/' + __parsed_resource_id["resourceGroup"] + '/PROVIDERS/'  + __parsed_resource_id["PROVIDER"]
                          +  '/'  + __parsed_resource_id["TYPE_NAME"] +  '/' +  __parsed_resource_id["TYPE"] +  '/'  + __parsed_resource_id["TYPE_2_NAME"] +  '/'+  __parsed_resource_id["TYPE_2"]
                          +  '/'  + __parsed_resource_id["TYPE_3_NAME"] +  '/' +  __parsed_resource_id["TYPE_3"]),
                __resource_id_level_2: if ( IS_NOT_NULL(__parsed_resource_id["TYPE_2_NAME"]), '/SUBSCRIPTIONS/' + __parsed_resource_id["subscription"] + '/RESOURCEGROUPS/' + __parsed_resource_id["resourceGroup"] + '/PROVIDERS/'  + __parsed_resource_id["PROVIDER"]
                          +  '/'  + __parsed_resource_id["TYPE_NAME"] +  '/' +  __parsed_resource_id["TYPE"] +  '/'  + __parsed_resource_id["TYPE_2_NAME"] +  '/'+  __parsed_resource_id["TYPE_2"]),
                __resource_id_level_1: if ( IS_NOT_NULL(__parsed_resource_id["TYPE_NAME"]), '/SUBSCRIPTIONS/' + __parsed_resource_id["subscription"] + '/RESOURCEGROUPS/' + __parsed_resource_id["resourceGroup"] + '/PROVIDERS/'  + __parsed_resource_id["PROVIDER"]
                          +  '/'  + __parsed_resource_id["TYPE_NAME"] +  '/' +  __parsed_resource_id["TYPE"]))
              | FIELDS_ADD(
                dt.source_entity: (case
                                    when starts(__resource_type, "MICROSOFT.APPCONFIGURATION/CONFIGURATIONSTORES")
                                      then calculate_entity_id("cloud:azure:appconfiguration:configurationstores", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.APPPLATFORM/SPRING")
                                      then calculate_entity_id("cloud:azure:appplatform:spring", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.AUTOMATION/AUTOMATIONACCOUNTS")
                                      then calculate_entity_id("cloud:azure:automation:automationaccounts", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.BATCH/BATCHACCOUNTS")
                                      then calculate_entity_id("cloud:azure:batch:account", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.BLOCKCHAIN/BLOCKCHAINMEMBERS")
                                      then calculate_entity_id("cloud:azure:blockchain:blockchainmembers", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.CDN/CDNWEBAPPLICATIONFIREWALLPOLICIES")
                                      then calculate_entity_id("cloud:azure:cdn:cdnwebapplicationfirewallpolicies", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.CLASSICCOMPUTE/VIRTUALMACHINES")
                                      then calculate_entity_id("cloud:azure:classic_virtual_machine", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.CLASSICSTORAGE/STORAGEACCOUNTS") and __kind == "BLOBSERVICES"
                                      then calculate_entity_id("cloud:azure:classic_storage_account:blob", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.CLASSICSTORAGE/STORAGEACCOUNTS") and __kind == "FILESERVICES"
                                      then calculate_entity_id("cloud:azure:classic_storage_account:file", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.CLASSICSTORAGE/STORAGEACCOUNTS") and __kind == "QUEUESERVICES"
                                      then calculate_entity_id("cloud:azure:classic_storage_account:queue", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.CLASSICSTORAGE/STORAGEACCOUNTS") and __kind == "TABLESERVICES"
                                      then calculate_entity_id("cloud:azure:classic_storage_account:table", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.CLASSICSTORAGE/STORAGEACCOUNTS")
                                      then calculate_entity_id("cloud:azure:classic_storage_account", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "ANOMALYDETECTOR"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:anomalydetector", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "BING.AUTOSUGGEST.V7"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:bingautosuggest", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "BING.CUSTOMSEARCH"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:bingcustomsearch", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "BING.ENTITYSEARCH"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:bingentitysearch", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "BING.SEARCH.V7"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:bingsearch", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "BING.SPELLCHECK.V7"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:bingspellcheck", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "COGNITIVESERVICES"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:allinone", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "COMPUTERVISION"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:computervision", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "CONTENTMODERATOR"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:contentmoderator", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "CUSTOMVISION.PREDICTION"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:customvisionprediction", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "CUSTOMVISION.TRAINING"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:customvisiontraining", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "FACE"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:face", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "IMMERSIVEREADER"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:immersivereader", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "INKRECOGNIZER"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:inkrecognizer", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "LUIS.AUTHORING"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:luisauthoring", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "LUIS"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:luis", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "PERSONALIZER"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:personalizer", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "QNAMAKER"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:qnamaker", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "SPEECHSERVICES"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:speech", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "TEXTANALYTICS"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:textanalytics", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COGNITIVESERVICES/ACCOUNTS") and __kind == "TEXTTRANSLATION"
                                      then calculate_entity_id("cloud:azure:cognitiveservices:translator", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.CONTAINERINSTANCE/CONTAINERGROUPS")
                                      then calculate_entity_id("cloud:azure:containerinstance:containergroup", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.CONTAINERREGISTRY/REGISTRIES")
                                      then calculate_entity_id("cloud:azure:containerregistry:registries", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.CONTAINERSERVICE/MANAGEDCLUSTERS")
                                      then calculate_entity_id("cloud:azure:containerservice:managedcluster", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.DATABOXEDGE/DATABOXEDGEDEVICES")
                                      then calculate_entity_id("cloud:azure:databoxedge:databoxedgedevices", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.DATACATALOG/CATALOGS")
                                      then calculate_entity_id("cloud:azure:datacatalog:catalogs", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.DATAFACTORY/DATAFACTORIES")
                                      then calculate_entity_id("cloud:azure:datafactory:v1", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.DATAFACTORY/FACTORIES")
                                      then calculate_entity_id("cloud:azure:datafactory:v2", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.DATALAKEANALYTICS/ACCOUNTS")
                                      then calculate_entity_id("cloud:azure:datalakeanalytics:accounts", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.DATALAKESTORE/ACCOUNTS")
                                      then calculate_entity_id("cloud:azure:datalakestore:accounts", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.DATASHARE/ACCOUNTS")
                                      then calculate_entity_id("cloud:azure:datashare:accounts", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.DBFORMARIADB/SERVERS")
                                      then calculate_entity_id("cloud:azure:mariadb:server", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.DBFORMYSQL/SERVERS")
                                      then calculate_entity_id("cloud:azure:mysql:server", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.DBFORPOSTGRESQL/SERVERS")
                                      then calculate_entity_id("cloud:azure:postgresql:server", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.DBFORPOSTGRESQL/SERVERSV2")
                                      then calculate_entity_id("cloud:azure:postgresql:serverv2", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.DEVICES/PROVISIONINGSERVICES")
                                      then calculate_entity_id("cloud:azure:devices:provisioningservices", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.EVENTGRID/DOMAINS")
                                      then calculate_entity_id("cloud:azure:eventgrid:domains", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.EVENTGRID/SYSTEMTOPICS")
                                      then calculate_entity_id("cloud:azure:eventgrid:systemtopics", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.EVENTGRID/TOPICS")
                                      then calculate_entity_id("cloud:azure:eventgrid:topics", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.EVENTHUB/CLUSTERS")
                                      then calculate_entity_id("cloud:azure:eventhub:clusters", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.HDINSIGHT/CLUSTERS")
                                      then calculate_entity_id("cloud:azure:hdinsight:cluster", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.INSIGHTS/COMPONENTS")
                                      then calculate_entity_id("cloud:azure:insights:components", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.IOTCENTRAL/IOTAPPS")
                                      then calculate_entity_id("cloud:azure:iotcentral:iotapps", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.KEYVAULT/VAULTS")
                                      then calculate_entity_id("cloud:azure:keyvault:vaults", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.KUSTO/CLUSTERS")
                                      then calculate_entity_id("cloud:azure:kusto:clusters", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.LOGIC/INTEGRATIONSERVICEENVIRONMENTS")
                                      then calculate_entity_id("cloud:azure:logic:integrationserviceenvironments", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.LOGIC/WORKFLOWS")
                                      then calculate_entity_id("cloud:azure:logic:workflows", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.MACHINELEARNINGSERVICES/WORKSPACES")
                                      then calculate_entity_id("cloud:azure:machinelearningservices:workspaces", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.MAPS/ACCOUNTS")
                                      then calculate_entity_id("cloud:azure:maps:accounts", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.MEDIA/MEDIASERVICES")
                                      then calculate_entity_id("cloud:azure:media:mediaservices", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.MEDIA/MEDIASERVICES/STREAMINGENDPOINTS")
                                      then calculate_entity_id("cloud:azure:media:mediaservices:streamingendpoints", __resource_id_level_2)
                                    when starts(__resource_type, "MICROSOFT.MIXEDREALITY/REMOTERENDERINGACCOUNTS")
                                      then calculate_entity_id("cloud:azure:mixedreality:remoterenderingaccounts", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.NETAPP/NETAPPACCOUNTS/CAPACITYPOOLS")
                                      then calculate_entity_id("cloud:azure:netapp:netappaccounts:capacitypools", __resource_id_level_2)
                                    when starts(__resource_type, "MICROSOFT.NETAPP/NETAPPACCOUNTS/CAPACITYPOOLS/VOLUMES")
                                      then calculate_entity_id("cloud:azure:netapp:netappaccounts:capacitypools:volumes", __resource_id_level_3)
                                    when starts(__resource_type, "MICROSOFT.NETWORK/AZUREFIREWALLS")
                                      then calculate_entity_id("cloud:azure:network:azurefirewalls", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.NETWORK/DNSZONES")
                                      then calculate_entity_id("cloud:azure:network:dnszones", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.NETWORK/EXPRESSROUTECIRCUITS")
                                      then calculate_entity_id("cloud:azure:network:expressroutecircuits", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.NETWORK/FRONTDOORS")
                                      then calculate_entity_id("cloud:azure:frontdoor", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.NETWORK/NETWORKINTERFACES")
                                      then calculate_entity_id("cloud:azure:network:networkinterfaces", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.NETWORK/NETWORKWATCHERS")
                                      then calculate_entity_id("cloud:azure:network:networkwatchers", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.NETWORK/NETWORKWATCHERS/CONNECTIONMONITORS")
                                      then calculate_entity_id("cloud:azure:network:networkwatchers:connectionmonitors", __resource_id_level_2)
                                    when starts(__resource_type, "MICROSOFT.NETWORK/NETWORKWATCHERS/CONNECTIONMONITORS/PREVIEW")
                                      then calculate_entity_id("cloud:azure:network:networkwatchers:connectionmonitors:preview", __resource_id_level_3)
                                    when starts(__resource_type, "MICROSOFT.NETWORK/PRIVATEDNSZONES")
                                      then calculate_entity_id("cloud:azure:network:privatednszones", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.NETWORK/PUBLICIPADDRESSES")
                                      then calculate_entity_id("cloud:azure:network:publicipaddresses", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.NETWORK/TRAFFICMANAGERPROFILES")
                                      then calculate_entity_id("cloud:azure:traffic_manager_profile", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.NETWORK/VIRTUALNETWORKGATEWAYS")
                                      then calculate_entity_id("cloud:azure:virtual_network_gateway", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.NETWORK/VIRTUALNETWORKS")
                                      then calculate_entity_id("cloud:azure:network:virtualnetworks", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.NOTIFICATIONHUBS/NAMESPACES/NOTIFICATIONHUBS")
                                      then calculate_entity_id("cloud:azure:notificationhubs:namespaces:notificationhubs", __resource_id_level_2)
                                    when starts(__resource_type, "MICROSOFT.OPERATIONALINSIGHTS/WORKSPACES")
                                      then calculate_entity_id("cloud:azure:operationalinsights:workspaces", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.PEERING/PEERINGS")
                                      then calculate_entity_id("cloud:azure:peering:peerings", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.POWERBIDEDICATED/CAPACITIES")
                                      then calculate_entity_id("cloud:azure:powerbidedicated:capacities", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.RELAY/NAMESPACES")
                                      then calculate_entity_id("cloud:azure:relay:namespaces", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.SEARCH/SEARCHSERVICES")
                                      then calculate_entity_id("cloud:azure:search:searchservices", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.SERVICEFABRICMESH/APPLICATIONS")
                                      then calculate_entity_id("cloud:azure:servicefabricmesh:applications", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.SIGNALRSERVICE/SIGNALR")
                                      then calculate_entity_id("cloud:azure:signalrservice:signalr", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.SQL/MANAGEDINSTANCES")
                                      then calculate_entity_id("cloud:azure:sql:managed", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.SQL/SERVERS/DATABASES") and __kind == "DATAWAREHOUSE"
                                      then calculate_entity_id("cloud:azure:sql:servers:databases:datawarehouse", __resource_id_level_2)
                                    when starts(__resource_type, "MICROSOFT.SQL/SERVERS/DATABASES") and __kind == "HYPERSCALE"
                                      then calculate_entity_id("cloud:azure:sql:servers:databases:hyperscale", __resource_id_level_2)
                                    when starts(__resource_type, "MICROSOFT.STORAGESYNC/STORAGESYNCSERVICES")
                                      then calculate_entity_id("cloud:azure:storagesync:storagesyncservices", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.STREAMANALYTICS/STREAMINGJOBS")
                                      then calculate_entity_id("cloud:azure:streamanalytics:streamingjobs", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.SYNAPSE/WORKSPACES")
                                      then calculate_entity_id("cloud:azure:synapse:workspaces", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.SYNAPSE/WORKSPACES/BIGDATAPOOLS")
                                      then calculate_entity_id("cloud:azure:synapse:workspaces:bigdatapools", __resource_id_level_2)
                                    when starts(__resource_type, "MICROSOFT.SYNAPSE/WORKSPACES/SQLPOOLS")
                                      then calculate_entity_id("cloud:azure:synapse:workspaces:sqlpools", __resource_id_level_2)
                                    when starts(__resource_type, "MICROSOFT.TIMESERIESINSIGHTS/ENVIRONMENTS")
                                      then calculate_entity_id("cloud:azure:timeseriesinsights:environments", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.TIMESERIESINSIGHTS/ENVIRONMENTS/EVENTSOURCES")
                                      then calculate_entity_id("cloud:azure:timeseriesinsights:eventsources", __resource_id_level_2)
                                    when starts(__resource_type, "MICROSOFT.VMWARECLOUDSIMPLE/VIRTUALMACHINES")
                                      then calculate_entity_id("cloud:azure:vmwarecloudsimple:virtualmachines", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.WEB/SITES/SLOTS") and __kind == "APP"
                                      then calculate_entity_id("cloud:azure:web:appslots", __resource_id_level_2)
                                    when starts(__resource_type, "MICROSOFT.WEB/SITES/SLOTS") and __kind == "FUNCTIONAPP"
                                      then calculate_entity_id("cloud:azure:web:functionslots", __resource_id_level_2)
                                    when starts(__resource_type, "MICROSOFT.WEB/HOSTINGENVIRONMENTS") and __kind == "ASEV2"
                                      then calculate_entity_id("cloud:azure:web:hostingenvironments:v2", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.WEB/HOSTINGENVIRONMENTS") and __kind == "ASEV1"
                                      then calculate_entity_id("cloud:azure:web:hostingenvironments:v1", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.WEB/SERVERFARMS")
                                      then calculate_entity_id("cloud:azure:web:serverfarms", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COMPUTE/VIRTUALMACHINESCALESETS")
                                      then calculate_entity_id("AZURE_VM_SCALE_SET", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.COMPUTE/VIRTUALMACHINES")
                                      then calculate_entity_id("AZURE_VM", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.STORAGE/STORAGEACCOUNTS")
                                      then calculate_entity_id("AZURE_STORAGE_ACCOUNT", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.SQL/SERVERS/DATABASES")
                                      then calculate_entity_id("AZURE_SQL_DATABASE", __resource_id_level_2)
                                    when starts(__resource_type, "MICROSOFT.SQL/SERVERS/ELASTICPOOLS")
                                      then calculate_entity_id("AZURE_SQL_ELASTIC_POOL", __resource_id_level_2)
                                    when starts(__resource_type, "MICROSOFT.SQL/SERVERS")
                                      then calculate_entity_id("AZURE_SQL_SERVER", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.DOCUMENTDB/DATABASEACCOUNTS")
                                      then calculate_entity_id("AZURE_COSMOS_DB", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.NETWORK/APPLICATIONGATEWAYS")
                                      then calculate_entity_id("AZURE_APPLICATION_GATEWAY", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.NETWORK/LOADBALANCERS")
                                      then calculate_entity_id("AZURE_LOAD_BALANCER", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.APIMANAGEMENT/SERVICE")
                                      then calculate_entity_id("AZURE_API_MANAGEMENT_SERVICE", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.CACHE/REDIS")
                                      then calculate_entity_id("AZURE_REDIS_CACHE", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.SERVICEBUS/NAMESPACES/TOPICS")
                                      then calculate_entity_id("AZURE_SERVICE_BUS_TOPIC", __resource_id_level_2)
                                    when starts(__resource_type, "MICROSOFT.SERVICEBUS/NAMESPACES/QUEUES")
                                      then calculate_entity_id("AZURE_SERVICE_BUS_QUEUE", __resource_id_level_2)
                                    when starts(__resource_type, "MICROSOFT.SERVICEBUS/NAMESPACES")
                                      then calculate_entity_id("AZURE_SERVICE_BUS_NAMESPACE", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.EVENTHUB/NAMESPACES/EVENTHUBS")
                                      then calculate_entity_id("AZURE_EVENT_HUB", __resource_id_level_2)
                                    when starts(__resource_type, "MICROSOFT.EVENTHUB/NAMESPACES")
                                      then calculate_entity_id("AZURE_EVENT_HUB_NAMESPACE", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.DEVICES/IOTHUBS")
                                      then calculate_entity_id("AZURE_IOT_HUB", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.WEB/SITES") and __kind == "FUNCTIONAPPLOGS"
                                      then calculate_entity_id("AZURE_FUNCTION_APP", __resource_id_level_1)
                                    when starts(__resource_type, "MICROSOFT.WEB/SITES")
                                      then calculate_entity_id("AZURE_WEB_APP", __resource_id_level_1)
                         end))
      
              | FIELDS_ADD(
                __level: coalesce(__contentJson["loglevel"],__contentJson["level"],__contentJson["Level"]))
              | FIELDS_ADD(__levelString: UPPER(__level[s]), __levelInt: __level[i])
              | FIELDS_ADD(
                loglevel: (case
                              when __levelInt==1 OR starts(__levelString, 'CRIT') then 'CRITICAL'
                              when __levelInt==2 OR starts(__levelString, 'ERR') then 'ERROR'
                              when __levelInt==3 OR starts(__levelString, 'WARN') then 'WARN'
                              when __levelInt==4 OR starts(__levelString, 'INFO') then 'INFO'
                              when IS_NOT_NULL(__levelString) then __levelString
                              else 'INFO'
                            end))
              | FIELDS_ADD(
                __resultType:__contentJson["resultType"],
                __resultSignature:STRING(__contentJson["resultSignature"]))
              | FIELDS_ADD(
                audit.action: IF(IS_NOT_NULL(__contentJson["properties"]["eventCategory"]), __contentJson["operationName"]),
                audit.result: IF(IS_NOT_NULL(__contentJson["properties"]["eventCategory"]), COALESCE(parse(__resultSignature, "LD:status '.'? EOF"), parse(__resultType, "LD:result '.'? EOF"))),
                audit.identity: IF(IS_NOT_NULL(__contentJson["properties"]["eventCategory"]), COALESCE(__contentJson["identity"]["claims"]["http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name"], __contentJson["http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name"])))
              | FIELDS_ADD(
                db.name: TO_NULL(""),
                db.statement: TO_NULL(""),
                db.operation: TO_NULL(""),
                db.user: TO_NULL(""),
                db.system: TO_NULL(""),
                http.client_ip: TO_NULL(""),
                http.flavor: TO_NULL(""),
                http.method: TO_NULL(""),
                http.scheme: TO_NULL(""),
                http.host: TO_NULL(""),
                http.route: TO_NULL(""),
                http.status_code: TO_NULL(""),
                http.target: TO_NULL(""),
                http.url: TO_NULL(""),
                message: TO_NULL(""),
                faas.name: TO_NULL(""),
                faas.instance: TO_NULL(""),
                faas.version: TO_NULL(""),
                k8s.pod.name: TO_NULL(""))
              | FIELDS_ADD(__isFunctionApp: __category=="FunctionAppLogs" AND __resource_type=="MICROSOFT.WEB/SITES")
              | FIELDS_ADD(
                  log.source:  IF(__isFunctionApp, 'FunctionAppLogs', log.source),
                  message:  COALESCE(IF(__isFunctionApp, STRING(__contentJson["properties"]["message"])), message),
                  faas.name:  COALESCE(IF(__isFunctionApp, STRING(__contentJson["properties"]["functionName"])), faas.name),
                  faas.instance:  COALESCE(IF(__isFunctionApp, STRING(__contentJson["properties"]["hostInstanceId"])), faas.instance),
                  faas.version:  COALESCE(IF(__isFunctionApp, STRING(__contentJson["properties"]["hostVersion"])), faas.version))
              | FIELDS_ADD(__isK8s: __resource_type=="MICROSOFT.CONTAINERSERVICE/MANAGEDCLUSTERS")
              | FIELDS_ADD(k8s.pod.name:  COALESCE(IF(__isK8s, STRING(__contentJson["properties"]["pod"])), k8s.pod.name))
              | FIELDS_ADD(__isGatewayLogs: __category=="GatewayLogs" AND __resource_type=="MICROSOFT.APIMANAGEMENT/SERVICE")
              | FIELDS_ADD(__http_parsed: IF(__isGatewayLogs, parse(__contentJson["properties"]["url"], "LD:httpScheme '://' LD:host ('/' LD):route ")))
              | FIELDS_ADD(
                  http.client_ip: COALESCE(IF(__isGatewayLogs, STRING(__contentJson["callerIpAddress"])), http.client_ip),
                  http.flavor: COALESCE(IF(__isGatewayLogs, STRING(__contentJson["properties"]["clientProtocol"])), http.flavor),
                  http.method: COALESCE(IF(__isGatewayLogs, STRING(__contentJson["properties"]["method"])), http.method),
                  http.scheme: COALESCE(IF(__isGatewayLogs, STRING(__http_parsed["httpScheme"])), http.scheme),
                  http.host: COALESCE(IF(__isGatewayLogs, STRING(__http_parsed["host"])), http.host),
                  http.route: COALESCE(IF(__isGatewayLogs, STRING(__http_parsed["route"])), http.route),
                  http.status_code: COALESCE(IF(__isGatewayLogs, STRING(__contentJson["properties"]["responseCode"])), http.status_code),
                  http.target: COALESCE(IF(__isGatewayLogs, STRING(__contentJson["properties"]["url"])), http.target),
                  http.url: COALESCE(IF(__isGatewayLogs, STRING(__contentJson["properties"]["url"])), http.url))
              | FIELDS_ADD(__isServiceBus: __category=="OperationalLogs" AND __resource_type=="MICROSOFT.SERVICEBUS/NAMESPACES")
              | FIELDS_ADD(__isEventhubNamespace: __category=="OperationalLogs" AND __resource_type=="MICROSOFT.EVENTHUB/NAMESPACES")
              | FIELDS_ADD(
                message: COALESCE(IF(__isEventhubNamespace OR __isServiceBus, STRING(__contentJson["EventName"])), message),
                timestamp: COALESCE(IF(__isEventhubNamespace OR __isServiceBus,parse(replace_string(STRING(__contentJson["EventTimeString"]), "M ", "M UTC"),"TIMESTAMP('M/d/yyyy h:m:s a Z'):t")), timestamp))
              | FIELDS_ADD(
                db.name: COALESCE(STRING(__contentJson["properties"]["db"]), db.name),
                db.statement: COALESCE(STRING(__contentJson["properties"]["sql_text"]), db.statement))
              | FIELDS_ADD(__isMariaDb: __resource_type=="MICROSOFT.DBFORMARIADB/SERVERS")
              | FIELDS_ADD(db.system: COALESCE(IF(__isMariaDb, "mariadb"), db.system))
              | FIELDS_ADD(__isMysqlDb: (__resource_type=="MICROSOFT.DBFORMYSQL/SERVERS" OR __resource_type=="MICROSOFT.DBFORMYSQL/FLEXIBLESERVERS"))
              | FIELDS_ADD(db.system: COALESCE(IF(__isMysqlDb, "mysql"), db.system))
              | FIELDS_ADD(__isMysqlEngineAuditLogs: (__isMysqlDb OR __isMariaDb) AND __category=="MySqlAuditLogs")
              | FIELDS_ADD(
                loglevel: COALESCE(IF(__isMysqlEngineAuditLogs,IF(IS_NOT_NULL(__contentJson["properties"]["error_code"]) AND __contentJson["properties"]["error_code"] > '0', 'ERROR', 'INFO')), loglevel),
                log.source: COALESCE(IF(__isMysqlEngineAuditLogs, 'MySqlAuditLogs - ' + __contentJson["properties"]["event_class"]), log.source),
                db.user: COALESCE(IF(__isMysqlEngineAuditLogs, IF(IS_NOT_NULL(__contentJson["properties"]["user"]), coalesce( parse(STRING(__contentJson["properties"]["user"]), "LD:result '[' LD"), STRING(__contentJson["properties"]["user"])))), db.user),
                db.operation: COALESCE(IF(__isMysqlEngineAuditLogs, IF(__contentJson["properties"]["event_class"] == 'table_access_log', STRING(__contentJson["properties"]["event_subclass"]))), db.operation))
              | FIELDS_ADD(__isMysqlEngineSlowLogs: (__isMysqlDb OR __isMariaDb) AND __category=="MySqlSlowLogs")
              | FIELDS_ADD(
                loglevel: COALESCE(IF(__isMysqlEngineSlowLogs, 'WARN'), loglevel),
                log.source: COALESCE(IF(__isMysqlEngineSlowLogs, 'MySqlSlowLogs'), log.source),
                db.user: COALESCE(IF(__isMysqlEngineSlowLogs, coalesce( parse(__contentJson["properties"]["host"], "LD:result '[' LD") , __contentJson["properties"]["host"])), db.user))
              | FIELDS_ADD(__isPostgreSQL: __resource_type=="MICROSOFT.DBFORPOSTGRESQL/SERVERS" OR __resource_type=="MICROSOFT.DBFORPOSTGRESQL/SERVERSV2" OR __resource_type=="MICROSOFT.DBFORPOSTGRESQL/FLEXIBLESERVERS")
              | FIELDS_ADD(db.system: COALESCE(IF(__isPostgreSQL, "postgresql"), db.system))
              | FIELDS_ADD(__isPostgreSQLLogs: __category=="PostgreSQLLogs")
              | FIELDS_ADD(loglevel: COALESCE(IF(__isPostgreSQLLogs, IF(IS_NOT_NULL(__contentJson["properties"]["errorLevel"]) AND __contentJson["properties"]["errorLevel"] == 'ERROR', 'ERROR', 'INFO')), loglevel))
              | FIELDS_ADD(__isMSSQL: __resource_type=="MICROSOFT.SQL/SERVERS/DATABASES" OR __resource_type=="MICROSOFT.SQL/MANAGEDINSTANCES/DATABASES" OR __resource_type=="MICROSOFT.SQL/MANAGEDINSTANCES")
              | FIELDS_ADD(__isMSSQLErrorLog: __isMSSQL AND (__category=="Errors" OR __category=="Timeouts" OR __category=="Deadlocks" OR __category=="Blocks"))
              | FIELDS_ADD(
                db.system: COALESCE(IF(__isMSSQL, "mssql"), db.system),
                db.name: COALESCE(IF(__isMSSQL, __contentJson["properties"]["DatabaseName"]), db.name),
                loglevel: COALESCE(IF(__isMSSQLErrorLog, 'ERROR'), loglevel))
          | FIELDS_REMOVE(__contentJson, __resource_id, __parsed_resource_id, __resource_type, __resource_name, __resource_name_full, __category, __kind, __resource_id_level_4, __resource_id_level_3, __resource_id_level_2, __resource_id_level_1, __level, __levelString, __resultType, __resultSignature, __isFunctionApp, __isK8s, __isGatewayLogs, __http_parsed, __isServiceBus, __isEventhubNamespace, __isMariaDb, __isMysqlDb, __isMysqlEngineAuditLogs, __isPostgreSQL, __isPostgreSQLLogs, __isMSSQL, __isMSSQLErrorLog, __isMysqlEngineSlowLogs, __levelInt)
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "cloud.provider": "azure",
          "content": "{\n  \"RoleLocation\": \"West US\",\n  \"ReleaseVersion\": \"6.2021.35.11+6cb1461.release_2021w35\",\n  \"time\": \"2022-03-21T07:52:38.2584050Z\",\n  \"resourceId\": \"/SUBSCRIPTIONS/69B51384-146C-4685-9DAB-5AE01877D7B8/RESOURCEGROUPS/MW-GR1/PROVIDERS/MICROSOFT.STORAGE/STORAGEACCOUNTS/DTMWSTORAGE1\",\n  \"operationName\": \"MICROSOFT.STORAGE/STORAGEACCOUNTS/LISTACCOUNTSAS/ACTION\",\n  \"category\": \"Administrative\",\n  \"resultType\": \"Failure\",\n  \"resultSignature\": \"Failed.NotFound\",\n  \"durationMs\": \"22\",\n  \"callerIpAddress\": \"40.112.242.0\",\n  \"correlationId\": \"e6563a00-d857-4746-9db4-25a2ee3d475e\",\n  \"identity\": {\n    \"authorization\": {\n      \"scope\": \"/subscriptions/69b51384-146c-4685-9dab-5ae01877d7b8/resourceGroups/mw-gr1/providers/Microsoft.Storage/storageAccounts/dtmwstorage1\",\n      \"action\": \"Microsoft.Storage/storageAccounts/listAccountSas/action\",\n      \"evidence\": {\n        \"role\": \"Azure Eventhubs Service Role\",\n        \"roleAssignmentScope\": \"/subscriptions/69b51384-146c-4685-9dab-5ae01877d7b8\",\n        \"roleAssignmentId\": \"ab1ae998ac0c422bb1d484519bb503b7\",\n        \"roleDefinitionId\": \"eb8e19915de042a6a64b29b059341b7b\",\n        \"principalId\": \"e7018f6488e246afa1977b9084d8346a\",\n        \"principalType\": \"ServicePrincipal\"\n      }\n    },\n    \"claims\": {\n      \"aud\": \"https://management.core.windows.net/\",\n      \"iss\": \"https://sts.windows.net/70ebe3a3-5b30-435d-9d67-7716d74ca190/\",\n      \"iat\": \"1631108537\",\n      \"nbf\": \"1631108537\",\n      \"exp\": \"1631195237\",\n      \"aio\": \"E2ZgYJixyXUK83oV3qvfzxWsdvzJDwA==\",\n      \"appid\": \"80369ed6-5f11-4dd9-bef3-692475845e77\",\n      \"appidacr\": \"2\",\n      \"http://schemas.microsoft.com/identity/claims/identityprovider\": \"https://sts.windows.net/70ebe3a3-5b30-435d-9d67-7716d74ca190/\",\n      \"http://schemas.microsoft.com/identity/claims/objectidentifier\": \"e7018f64-88e2-46af-a197-7b9084d8346a\",\n      \"rh\": \"0.AUUAo-PrcDBbXUOdZ3cW10yhkNaeNoARX9lNvvNpJHWEXndFAAA.\",\n      \"http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier\": \"e7018f64-88e2-46af-a197-7b9084d8346a\",\n      \"http://schemas.microsoft.com/identity/claims/tenantid\": \"70ebe3a3-5b30-435d-9d67-7716d74ca190\",\n      \"uti\": \"qaZswHoSuEOwZThkmTJDAA\",\n      \"ver\": \"1.0\",\n      \"xms_tcdt\": \"1415644249\"\n    }\n  },\n  \"level\": \"Error\",\n  \"properties\": {\n    \"statusCode\": \"NotFound\",\n    \"serviceRequestId\": null,\n    \"statusMessage\": \"{\\\"error\\\":{\\\"code\\\":\\\"ResourceGroupNotFound\\\",\\\"message\\\":\\\"Resource group 'mw-gr1' could not be found.\\\"}}\",\n    \"eventCategory\": \"Administrative\",\n    \"entity\": \"/subscriptions/69b51384-146c-4685-9dab-5ae01877d7b8/resourceGroups/mw-gr1/providers/Microsoft.Storage/storageAccounts/dtmwstorage1\",\n    \"message\": \"Microsoft.Storage/storageAccounts/listAccountSas/action\",\n    \"hierarchy\": \"70ebe3a3-5b30-435d-9d67-7716d74ca190/mg-dynatrace/mg-dt-teams/69b51384-146c-4685-9dab-5ae01877d7b8\"\n  },\n  \"tenantId\": \"70ebe3a3-5b30-435d-9d67-7716d74ca190\"\n}"
      })
  }
}
