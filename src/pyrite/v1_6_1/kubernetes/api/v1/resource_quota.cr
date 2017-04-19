# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ResourceQuota sets aggregate quota restrictions enforced per namespace
class Pyrite::V1_6_1::Kubernetes::Api::V1::ResourceQuota
  # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the desired quota. [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
  property spec : ::Pyrite::V1_6_1::Kubernetes::Api::V1::ResourceQuotaSpec

  # Status defines the actual enforced quota and its current usage. [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
  property status : ::Pyrite::V1_6_1::Kubernetes::Api::V1::ResourceQuotaStatus

  YAML.mapping({
    api_version: {type: String, default: "ResourceQuota", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::ResourceQuotaSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::ResourceQuotaStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ResourceQuota", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::ResourceQuotaSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::ResourceQuotaStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : ::Pyrite::V1_6_1::Kubernetes::Api::V1::ResourceQuotaSpec = nil, @status : ::Pyrite::V1_6_1::Kubernetes::Api::V1::ResourceQuotaStatus = nil)
    @api_version = "ResourceQuota"
    @kind = "v1"
  end

  # create a ResourceQuota
  def create(context : String? = nil)
  end

  # list or watch objects of kind ResourceQuota
  def self.list(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # delete collection of ResourceQuota
  def self.delete(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # read the specified ResourceQuota
  def self.read(name : String, context : String? = nil, exact : Bool? = nil, export : Bool? = nil, namespace : String = "default")
  end

  # replace the specified ResourceQuota
  def replace(context : String? = nil)
  end

  # partially update the specified ResourceQuota
  def patch(context : String? = nil)
  end

  # delete a ResourceQuota
  def delete(grace_period_seconds : Int32? = nil, orphan_dependents : Bool? = nil, preconditions : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Preconditions = nil, propagation_policy : String? = nil, context : String? = nil)
  end

  # read status of the specified ResourceQuota
  def self.read_status(name : String, context : String? = nil, namespace : String = "default")
  end

  # replace status of the specified ResourceQuota
  def replace_status(context : String? = nil)
  end

  # partially update status of the specified ResourceQuota
  def patch_status(context : String? = nil)
  end
end
