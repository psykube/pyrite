# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Pod Security Policy governs the ability to make requests that affect the Security Context that will be applied to a pod and container.
class Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicy
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # spec defines the policy enforced.
  property spec : ::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicySpec

  YAML.mapping({
    api_version: {type: String, default: "PodSecurityPolicy", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicySpec, nilable: true, key: spec, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "PodSecurityPolicy", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicySpec, nilable: true, key: spec, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil)
    @api_version = "PodSecurityPolicy"
    @kind = "v1beta1"
  end

  # create a PodSecurityPolicy
  def create
  end

  # list or watch objects of kind PodSecurityPolicy
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # delete collection of PodSecurityPolicy
  def self.delete(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # read the specified PodSecurityPolicy
  def self.read(exact : Bool?, export : Bool?, name : String)
  end

  # replace the specified PodSecurityPolicy
  def replace
  end

  # partially update the specified PodSecurityPolicy
  def patch
  end

  # delete a PodSecurityPolicy
  def delete(grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end
end
