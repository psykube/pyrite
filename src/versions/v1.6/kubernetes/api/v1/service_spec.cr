# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ServiceSpec describes the attributes that a user creates on a service.
  class Kubernetes::Api::V1::ServiceSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # clusterIP is the IP address of the service and is usually assigned randomly by the master. If an address is specified manually and is not in use by others, it will be allocated to the service; otherwise, creation of the service will fail. This field can not be changed through updates. Valid values are "None", empty string (""), or a valid IP address. "None" can be specified for headless services when proxying is not required. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: [http://kubernetes.io/docs/user-guide/services#virtual-ips-and-service-proxies](http://kubernetes.io/docs/user-guide/services#virtual-ips-and-service-proxies)
    @[::JSON::Field(key: "clusterIP")]
    @[::YAML::Field(key: "clusterIP")]
    property cluster_ip : String | Nil

    # deprecatedPublicIPs is deprecated and replaced by the externalIPs field with almost the exact same semantics.  This field is retained in the v1 API for compatibility until at least [8/20/2016.  It will be removed from any new API revisions.  If both deprecatedPublicIPs *and* externalIPs are set, deprecatedPublicIPs is used.](8/20/2016.  It will be removed from any new API revisions.  If both deprecatedPublicIPs *and* externalIPs are set, deprecatedPublicIPs is used.)
    @[::JSON::Field(key: "deprecatedPublicIPs")]
    @[::YAML::Field(key: "deprecatedPublicIPs")]
    property deprecated_public_ips : Array(String) | Nil

    # externalIPs is a list of IP addresses for which nodes in the cluster will also accept traffic for this service.  These IPs are not managed by Kubernetes.  The user is responsible for ensuring that traffic arrives at a node with this IP.  A common example is external load-balancers that are not part of the Kubernetes system.  A previous form of this functionality exists as the deprecatedPublicIPs field.  When using this field, callers should also clear the deprecatedPublicIPs field.
    @[::JSON::Field(key: "externalIPs")]
    @[::YAML::Field(key: "externalIPs")]
    property external_ips : Array(String) | Nil

    # externalName is the external reference that kubedns or equivalent will return as a CNAME record for this service. No proxying will be involved. Must be a valid DNS name and requires Type to be ExternalName.
    @[::JSON::Field(key: "externalName")]
    @[::YAML::Field(key: "externalName")]
    property external_name : String | Nil

    # Only applies to Service Type: LoadBalancer LoadBalancer will get created with the IP specified in this field. This feature depends on whether the underlying cloud-provider supports specifying the loadBalancerIP when a load balancer is created. This field will be ignored if the cloud-provider does not support the feature.
    @[::JSON::Field(key: "loadBalancerIP")]
    @[::YAML::Field(key: "loadBalancerIP")]
    property load_balancer_ip : String | Nil

    # If specified and supported by the platform, this will restrict traffic through the cloud-provider load-balancer will be restricted to the specified client IPs. This field will be ignored if the cloud-provider does not support the feature." More info: [http://kubernetes.io/docs/user-guide/services-firewalls](http://kubernetes.io/docs/user-guide/services-firewalls)
    @[::JSON::Field(key: "loadBalancerSourceRanges")]
    @[::YAML::Field(key: "loadBalancerSourceRanges")]
    property load_balancer_source_ranges : Array(String) | Nil

    # The list of ports that are exposed by this service. More info: [http://kubernetes.io/docs/user-guide/services#virtual-ips-and-service-proxies](http://kubernetes.io/docs/user-guide/services#virtual-ips-and-service-proxies)
    @[::JSON::Field(key: "ports")]
    @[::YAML::Field(key: "ports")]
    property ports : Array(Kubernetes::Api::V1::ServicePort) | Nil

    # Route service traffic to pods with label keys and values matching this selector. If empty or not present, the service is assumed to have an external process managing its endpoints, which Kubernetes will not modify. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: [http://kubernetes.io/docs/user-guide/services#overview](http://kubernetes.io/docs/user-guide/services#overview)
    @[::JSON::Field(key: "selector")]
    @[::YAML::Field(key: "selector")]
    property selector : Hash(String, String) | Nil

    # Supports "ClientIP" and "None". Used to maintain session affinity. Enable client IP based session affinity. Must be ClientIP or None. Defaults to None. More info: [http://kubernetes.io/docs/user-guide/services#virtual-ips-and-service-proxies](http://kubernetes.io/docs/user-guide/services#virtual-ips-and-service-proxies)
    @[::JSON::Field(key: "sessionAffinity")]
    @[::YAML::Field(key: "sessionAffinity")]
    property session_affinity : String | Nil

    # type determines how the Service is exposed. Defaults to ClusterIP. Valid options are ExternalName, ClusterIP, NodePort, and LoadBalancer. "ExternalName" maps to the specified externalName. "ClusterIP" allocates a cluster-internal IP address for load-balancing to endpoints. Endpoints are determined by the selector or if that is not specified, by manual construction of an Endpoints object. If clusterIP is "None", no virtual IP is allocated and the endpoints are published as a set of endpoints rather than a stable IP. "NodePort" builds on ClusterIP and allocates a port on every node which routes to the clusterIP. "LoadBalancer" builds on NodePort and creates an external load-balancer (if supported in the current cloud) which routes to the clusterIP. More info: [http://kubernetes.io/docs/user-guide/services#overview](http://kubernetes.io/docs/user-guide/services#overview)
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String | Nil

    def initialize(*, @cluster_ip : String | Nil = nil, @deprecated_public_ips : Array | Nil = nil, @external_ips : Array | Nil = nil, @external_name : String | Nil = nil, @load_balancer_ip : String | Nil = nil, @load_balancer_source_ranges : Array | Nil = nil, @ports : Array | Nil = nil, @selector : Hash(String, String) | Nil = nil, @session_affinity : String | Nil = nil, @type : String | Nil = nil)
    end
  end
end
