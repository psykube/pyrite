# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# DeploymentList is a list of Deployments.
class Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::DeploymentList
  # Items is the list of Deployments.
  property items : Array(::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::Deployment)

  # Standard list metadata.
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "DeploymentList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::Deployment), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "DeploymentList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::Deployment), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "DeploymentList"
    @kind = "v1beta1"
  end

  # list or watch objects of kind Deployment
  def self.list_for_all_namespaces(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # create a Deployment
  def create(metadata = nil, spec = nil, status = nil)
  end

  # list or watch objects of kind Deployment
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # delete collection of Deployment
  def self.delete(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end
end
