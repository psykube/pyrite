# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

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
class Pyrite::V1_6_1::Kubernetes::Api::V1::Endpoints
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # The set of all endpoints is the union of all subsets.Addresses are placed into subsets according to the IPs they share.A single address with multiple ports, some of which are ready and some of which are not (because they come from different containers) will result in the address being displayed in different subsets for the different ports.No address will appear in both Addresses and NotReadyAddresses in the same subset.Sets of addresses and ports that comprise a service.
  property subsets : Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::EndpointSubset)

  YAML.mapping({
    api_version: {type: String, default: "Endpoints", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    subsets:     {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::EndpointSubset), nilable: false, key: subsets, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "Endpoints", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    subsets:     {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::EndpointSubset), nilable: false, key: subsets, getter: false, setter: false},
  }, true)

  def initialize(@subsets, @metadata = nil)
    @api_version = "Endpoints"
    @kind = "v1"
  end

  # create Endpoints
  def create
  end

  # list or watch objects of kind Endpoints
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # delete collection of Endpoints
  def self.delete(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified Endpoints
  def self.read(exact : Bool?, export : Bool?, name : String, namespace : String = "default")
  end

  # replace the specified Endpoints
  def replace
  end

  # partially update the specified Endpoints
  def patch
  end

  # delete Endpoints
  def delete(grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end
end
