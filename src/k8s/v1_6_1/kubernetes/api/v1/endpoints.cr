require "yaml"
require "json"

# Endpoints is a collection of endpoints that implement the actual service.Example:
#   Name: "mysvc",
#   Subsets: [
#     {
#       Addresses: [{"ip": "10.10.1.1"}, {"ip": "10.10.2.2"}],
#       Ports: [{"name": "a", "port": 8675}, {"name": "b", "port": 309}]
#     },
#     {
#       Addresses: [{"ip": "10.10.3.3"}],
#       Ports: [{"name": "a", "port": 93}, {"name": "b", "port": 76}]
#     },
#  ]
class K8S::V1_6_1::Kubernetes::Api::V1::Endpoints
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # The set of all endpoints is the union of all subsets.Addresses are placed into subsets according to the IPs they share.A single address with multiple ports, some of which are ready and some of which are not (because they come from different containers) will result in the address being displayed in different subsets for the different ports.No address will appear in both Addresses and NotReadyAddresses in the same subset.Sets of addresses and ports that comprise a service.
  property subsets : Array(::K8S::V1_6_1::Kubernetes::Api::V1::EndpointSubset)

  YAML.mapping({
    api_version: {type: String, default: "Endpoints", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    subsets:     {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::EndpointSubset), nilable: false, key: subsets, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "Endpoints", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    subsets:     {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::EndpointSubset), nilable: false, key: subsets, getter: false, setter: false},
  }, true)

  def initialize(@subsets, @metadata = nil)
    @api_version = "Endpoints"
    @kind = "v1"
  end

  # list or watch objects of kind Endpoints
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create Endpoints
  def self.create(subsets, metadata = nil, namespace : String = "default")
  end

  # read the specified Endpoints
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end
