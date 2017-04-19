# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Deployment enables declarative updates for Pods and ReplicaSets.
class Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::Deployment
  # Standard object metadata.
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Specification of the desired behavior of the Deployment.
  property spec : ::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::DeploymentSpec

  # Most recently observed status of the Deployment.
  property status : ::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::DeploymentStatus

  YAML.mapping({
    api_version: {type: String, default: "Deployment", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::DeploymentSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::DeploymentStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "Deployment", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::DeploymentSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::DeploymentStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : ::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::DeploymentSpec = nil, @status : ::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::DeploymentStatus = nil)
    @api_version = "Deployment"
    @kind = "v1beta1"
  end

  # create a Deployment
  def create(context : String? = nil)
  end

  # list or watch objects of kind Deployment
  def self.list(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # delete collection of Deployment
  def self.delete(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # read the specified Deployment
  def self.read(name : String, context : String? = nil, exact : Bool? = nil, export : Bool? = nil, namespace : String = "default")
  end

  # replace the specified Deployment
  def replace(context : String? = nil)
  end

  # partially update the specified Deployment
  def patch(context : String? = nil)
  end

  # delete a Deployment
  def delete(grace_period_seconds : Int32? = nil, orphan_dependents : Bool? = nil, preconditions : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Preconditions = nil, propagation_policy : String? = nil, context : String? = nil)
  end

  # read status of the specified Deployment
  def self.read_status(name : String, context : String? = nil, namespace : String = "default")
  end

  # replace status of the specified Deployment
  def replace_status(context : String? = nil)
  end

  # partially update status of the specified Deployment
  def patch_status(context : String? = nil)
  end
end
