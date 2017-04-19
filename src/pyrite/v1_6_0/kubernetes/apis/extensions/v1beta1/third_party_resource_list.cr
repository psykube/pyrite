# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ThirdPartyResourceList is a list of ThirdPartyResources.
class Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResourceList
  # Items is the list of ThirdPartyResources.
  property items : Array(::Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource)

  # Standard list metadata.
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "ThirdPartyResourceList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ThirdPartyResourceList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta = nil)
    @api_version = "ThirdPartyResourceList"
    @kind = "v1beta1"
  end

  # create a ThirdPartyResource
  def create(description : String? = nil, metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, versions : Array? = nil, context : String? = nil)
  end

  # list or watch objects of kind ThirdPartyResource
  def self.list(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil)
  end

  # delete collection of ThirdPartyResource
  def self.delete(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil)
  end
end
