# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ServiceSpec describes the attributes that a user creates on a service.
  class Api::Core::V1::ServiceSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # clusterIP is the IP address of the service and is usually assigned randomly by the master. If an address is specified manually and is not in use by others, it will be allocated to the service; otherwise, creation of the service will fail. This field can not be changed through updates. Valid values are "None", empty string (""), or a valid IP address. "None" can be specified for headless services when proxying is not required. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)
    @[JSON::Field(key: "clusterIP")]
    @[YAML::Field(key: "clusterIP")]
    property cluster_ip : String | Nil

    # externalIPs is a list of IP addresses for which nodes in the cluster will also accept traffic for this service.  These IPs are not managed by Kubernetes.  The user is responsible for ensuring that traffic arrives at a node with this IP.  A common example is external load-balancers that are not part of the Kubernetes system.
    @[JSON::Field(key: "externalIPs")]
    @[YAML::Field(key: "externalIPs")]
    property external_ips : Array(String) | Nil

    # externalName is the external reference that kubedns or equivalent will return as a CNAME record for this service. No proxying will be involved. Must be a valid RFC-1123 hostname ([https://tools.ietf.org/html/rfc1123) and requires Type to be ExternalName.](https://tools.ietf.org/html/rfc1123) and requires Type to be ExternalName.)
    @[JSON::Field(key: "externalName")]
    @[YAML::Field(key: "externalName")]
    property external_name : String | Nil

    # externalTrafficPolicy denotes if this Service desires to route external traffic to node-local or cluster-wide endpoints. "Local" preserves the client source IP and avoids a second hop for LoadBalancer and Nodeport type services, but risks potentially imbalanced traffic spreading. "Cluster" obscures the client source IP and may cause a second hop to another node, but should have good overall load-spreading.
    @[JSON::Field(key: "externalTrafficPolicy")]
    @[YAML::Field(key: "externalTrafficPolicy")]
    property external_traffic_policy : String | Nil

    # healthCheckNodePort specifies the healthcheck nodePort for the service. If not specified, HealthCheckNodePort is created by the service api backend with the allocated nodePort. Will use user-specified nodePort value if specified by the client. Only effects when Type is set to LoadBalancer and ExternalTrafficPolicy is set to Local.
    @[JSON::Field(key: "healthCheckNodePort")]
    @[YAML::Field(key: "healthCheckNodePort")]
    property health_check_node_port : Int32 | Nil

    # Only applies to Service Type: LoadBalancer LoadBalancer will get created with the IP specified in this field. This feature depends on whether the underlying cloud-provider supports specifying the loadBalancerIP when a load balancer is created. This field will be ignored if the cloud-provider does not support the feature.
    @[JSON::Field(key: "loadBalancerIP")]
    @[YAML::Field(key: "loadBalancerIP")]
    property load_balancer_ip : String | Nil

    # If specified and supported by the platform, this will restrict traffic through the cloud-provider load-balancer will be restricted to the specified client IPs. This field will be ignored if the cloud-provider does not support the feature." More info: [https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/](https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/)
    @[JSON::Field(key: "loadBalancerSourceRanges")]
    @[YAML::Field(key: "loadBalancerSourceRanges")]
    property load_balancer_source_ranges : Array(String) | Nil

    # The list of ports that are exposed by this service. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)
    @[JSON::Field(key: "ports")]
    @[YAML::Field(key: "ports")]
    property ports : Array(Api::Core::V1::ServicePort) | Nil

    # publishNotReadyAddresses, when set to true, indicates that DNS implementations must publish the notReadyAddresses of subsets for the Endpoints associated with the Service. The default value is false. The primary use case for setting this field is to use a StatefulSet's Headless Service to propagate SRV records for its Pods without respect to their readiness for purpose of peer discovery.
    @[JSON::Field(key: "publishNotReadyAddresses")]
    @[YAML::Field(key: "publishNotReadyAddresses")]
    property publish_not_ready_addresses : Bool | Nil

    # Route service traffic to pods with label keys and values matching this selector. If empty or not present, the service is assumed to have an external process managing its endpoints, which Kubernetes will not modify. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: [https://kubernetes.io/docs/concepts/services-networking/service/](https://kubernetes.io/docs/concepts/services-networking/service/)
    @[JSON::Field(key: "selector")]
    @[YAML::Field(key: "selector")]
    property selector : Hash(String, String) | Nil

    # Supports "ClientIP" and "None". Used to maintain session affinity. Enable client IP based session affinity. Must be ClientIP or None. Defaults to None. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)
    @[JSON::Field(key: "sessionAffinity")]
    @[YAML::Field(key: "sessionAffinity")]
    property session_affinity : String | Nil

    # sessionAffinityConfig contains the configurations of session affinity.
    @[JSON::Field(key: "sessionAffinityConfig")]
    @[YAML::Field(key: "sessionAffinityConfig")]
    property session_affinity_config : Api::Core::V1::SessionAffinityConfig | Nil

    # type determines how the Service is exposed. Defaults to ClusterIP. Valid options are ExternalName, ClusterIP, NodePort, and LoadBalancer. "ExternalName" maps to the specified externalName. "ClusterIP" allocates a cluster-internal IP address for load-balancing to endpoints. Endpoints are determined by the selector or if that is not specified, by manual construction of an Endpoints object. If clusterIP is "None", no virtual IP is allocated and the endpoints are published as a set of endpoints rather than a stable IP. "NodePort" builds on ClusterIP and allocates a port on every node which routes to the clusterIP. "LoadBalancer" builds on NodePort and creates an external load-balancer (if supported in the current cloud) which routes to the clusterIP. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services---service-types](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services---service-types)
    @[JSON::Field(key: "type")]
    @[YAML::Field(key: "type")]
    property type : String | Nil

    def initialize(*, @cluster_ip : String | Nil = nil, @external_ips : Array | Nil = nil, @external_name : String | Nil = nil, @external_traffic_policy : String | Nil = nil, @health_check_node_port : Int32 | Nil = nil, @load_balancer_ip : String | Nil = nil, @load_balancer_source_ranges : Array | Nil = nil, @ports : Array | Nil = nil, @publish_not_ready_addresses : Bool | Nil = nil, @selector : Hash(String, String) | Nil = nil, @session_affinity : String | Nil = nil, @session_affinity_config : Api::Core::V1::SessionAffinityConfig | Nil = nil, @type : String | Nil = nil)
    end
  end
end
