# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Pod Security Policy governs the ability to make requests that affect the Security Context that will be applied to a pod and container.
class Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicy
  # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
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

  def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : ::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicySpec = nil)
    @api_version = "PodSecurityPolicy"
    @kind = "v1beta1"
  end

  # create a PodSecurityPolicy
  def create(context : String? = nil)
  end

  # list or watch objects of kind PodSecurityPolicy
  def self.list(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil)
  end

  # delete collection of PodSecurityPolicy
  def self.delete(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil)
  end

  # read the specified PodSecurityPolicy
  def self.read(name : String, context : String? = nil, exact : Bool? = nil, export : Bool? = nil)
  end

  # replace the specified PodSecurityPolicy
  def replace(context : String? = nil)
  end

  # partially update the specified PodSecurityPolicy
  def patch(context : String? = nil)
  end

  # delete a PodSecurityPolicy
  def delete(grace_period_seconds : Int32? = nil, orphan_dependents : Bool? = nil, preconditions : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Preconditions = nil, propagation_policy : String? = nil, context : String? = nil)
  end
end
