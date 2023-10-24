resource "dynatrace_resource_attributes" "dynatrace_resource_attributes" {
  keys {
    rule {
      enabled       = true
      attribute_key = "adobe.em.env_type"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "adobe.em.service"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "adobe.em.tier"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "apache.config.path"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "apache.spark.master.ip"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "application.environment"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "application.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "application.version.build"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "application.version.release"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "aspnetcore.appl.path"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "aws.ecr.account.id"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "aws.ecr.region"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "aws.ecs.cluster"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "aws.ecs.container.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "aws.ecs.family"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "aws.ecs.revision"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "aws.lambda.function.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "aws.region"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "cassandra.cluster.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "catalina.base"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "catalina.home"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "cloud.account.id"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "cloud.availability_zone"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "cloud.platform"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "cloud.provider"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "cloud.region"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "cloud.resource_id"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "cloudfoundry.application.id"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "cloudfoundry.application.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "cloudfoundry.instance.index"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "cloudfoundry.space.id"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "cloudfoundry.space.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "coldfusion.jvm.config.file"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "coldfusion.service.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "container.id"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "container.image.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "container.image.tag"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "container.image.version"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "container.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "container.runtime"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "deployment.environment"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "device.model.identifier"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "device.model.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "dotnet.dll.file"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "dotnet.dll.path"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "elasticsearch.cluster.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "elasticsearch.node.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "equinox.config.path"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "faas.id"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "faas.instance"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "faas.max_memory"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "faas.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "faas.version"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "gcp.app_engine.instance"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "gcp.app_engine.service"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "gcp.cloud_run.service"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "gcp.instance.id"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "gcp.instance.region"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "gcp.project"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "glassfish.domain.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "glassfish.instance.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "go.linkage"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "host.arch"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "host.id"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "host.image.id"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "host.image.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "host.image.version"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "host.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "host.type"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "hybris.bin.dir"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "hybris.config.dir"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "hybris.data.dir"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "ibm.ace.broker.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "ibm.ace.execution_group.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "ibm.cics.aor"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "ibm.cics.region"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "ibm.cics.tor"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "ibm.ctg.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "ibm.ims.connect"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "ibm.ims.control"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "ibm.ims.mpr"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "ibm.ims.soap_gw.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "iis.app_pool.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "iis.role.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "istio.canonical_service"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "istio.namespace"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "java.jar.file"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "java.jar.path"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "java.main.class"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "java.main.module"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "jboss.home"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "jboss.mode"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "jboss.server.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.cluster.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.container.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.container.restart_count"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.cronjob.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.cronjob.uid"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.daemonset.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.daemonset.uid"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.deployment.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.deployment.uid"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.job.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.job.uid"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.namespace.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.node.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.node.uid"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.pod.basename"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.pod.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.pod.uid"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.replicaset.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.replicaset.uid"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.statefulset.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "k8s.statefulset.uid"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "nodejs.app.base.dir"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "nodejs.app.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "nodejs.script.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "os.description"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "os.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "os.type"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "os.version"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "php.cli.script.path"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "php.cli.working.dir"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "php.drupal.application.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "php.fpm.pool.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "php.symfony.application.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "php.wordpress.blog.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "process.command"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "process.command_args"
      masking       = "MASK_ENTIRE_VALUE"
    }
    rule {
      enabled       = true
      attribute_key = "process.command_line"
      masking       = "MASK_ENTIRE_VALUE"
    }
    rule {
      enabled       = true
      attribute_key = "process.executable.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "process.executable.path"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "process.pid"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "process.runtime.description"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "process.runtime.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "process.runtime.version"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "service.instance.id"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "service.namespace"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "service.version"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "servlet.context.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "servlet.context.path"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "softwareag.install.root"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "softwareag.product.prop.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "spring.application.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "spring.profile.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "spring.startup.class"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "telemetry.auto.version"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "telemetry.sdk.language"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "telemetry.sdk.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "telemetry.sdk.version"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "tibco.businessworks.app.node.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "tibco.businessworks.app.space.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "tibco.businessworks.domain.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "tibco.businessworks.home"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "tibco.businessworks.property.file.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "tibco.businessworks.property.file.path"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "tibco.businessworks_ce.app.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "tibco.businessworks_ce.version"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "webengine.description"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "webengine.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "webengine.version"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "weblogic.cluster.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "weblogic.domain.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "weblogic.home"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "weblogic.server.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "websphere.cell.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "websphere.cluster.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "websphere.node.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "websphere.server.name"
      masking       = "NOT_MASKED"
    }
    rule {
      enabled       = true
      attribute_key = "websphere_liberty.server.name"
      masking       = "NOT_MASKED"
    }
  }
}
