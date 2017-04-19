# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# A ThirdPartyResource is a generic representation of a resource, it is used by add-ons and plugins to add new resource types to the API.  It consists of one or more Versions of the api.
class Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource
  # Description is the description of this object.
  property description : String?

  # Standard object metadata
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Versions are versions for this third party object
  property versions : Array(::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::APIVersion)?

  YAML.mapping({
    api_version: {type: String, default: "ThirdPartyResource", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    description: {type: String, nilable: true, key: description, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    versions:    {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::APIVersion), nilable: true, key: versions, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ThirdPartyResource", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    description: {type: String, nilable: true, key: description, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    versions:    {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::APIVersion), nilable: true, key: versions, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @description : String? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @versions : Array? = nil)
    @api_version = "ThirdPartyResource"
    @kind = "v1beta1"
  end

  # create a ThirdPartyResource
  def create(context : String? = nil)
  end

  # list or watch objects of kind ThirdPartyResource
  def self.list(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil)
  end

  # delete collection of ThirdPartyResource
  def self.delete(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil)
  end

  # read the specified ThirdPartyResource
  def self.read(name : String, context : String? = nil, exact : Bool? = nil, export : Bool? = nil)
  end

  # replace the specified ThirdPartyResource
  def replace(context : String? = nil)
  end

  # partially update the specified ThirdPartyResource
  def patch(context : String? = nil)
  end

  # delete a ThirdPartyResource
  def delete(grace_period_seconds : Int32? = nil, orphan_dependents : Bool? = nil, preconditions : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Preconditions = nil, propagation_policy : String? = nil, context : String? = nil)
  end
end
