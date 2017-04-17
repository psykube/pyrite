# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ResourceQuota sets aggregate quota restrictions enforced per namespace
class Pyrite::V1_6_1::Kubernetes::Api::V1::ResourceQuota
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the desired quota.http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::Pyrite::V1_6_1::Kubernetes::Api::V1::ResourceQuotaSpec

  # Status defines the actual enforced quota and its current usage.http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
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

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "ResourceQuota"
    @kind = "v1"
  end

  # create a ResourceQuota
  def create
  end

  # list or watch objects of kind ResourceQuota
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # delete collection of ResourceQuota
  def self.delete(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified ResourceQuota
  def self.read(exact : Bool?, export : Bool?, name : String, namespace : String = "default")
  end

  # replace the specified ResourceQuota
  def replace
  end

  # partially update the specified ResourceQuota
  def patch
  end

  # delete a ResourceQuota
  def delete(grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end

  # read status of the specified ResourceQuota
  def self.read_status(name : String, namespace : String = "default")
  end

  # replace status of the specified ResourceQuota
  def replace_status
  end

  # partially update status of the specified ResourceQuota
  def patch_status
  end
end
