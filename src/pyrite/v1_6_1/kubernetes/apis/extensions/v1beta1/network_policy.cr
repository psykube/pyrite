# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

class Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicy
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Specification of the desired behavior for this NetworkPolicy.
  property spec : ::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicySpec

  YAML.mapping({
    api_version: {type: String, default: "NetworkPolicy", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicySpec, nilable: true, key: spec, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "NetworkPolicy", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicySpec, nilable: true, key: spec, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil)
    @api_version = "NetworkPolicy"
    @kind = "v1beta1"
  end

  # create a NetworkPolicy
  def create
  end

  # list or watch objects of kind NetworkPolicy
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # delete collection of NetworkPolicy
  def self.delete(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified NetworkPolicy
  def self.read(exact : Bool?, export : Bool?, name : String, namespace : String = "default")
  end

  # replace the specified NetworkPolicy
  def replace
  end

  # partially update the specified NetworkPolicy
  def patch
  end

  # delete a NetworkPolicy
  def delete(grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end
end
