# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # A ThirdPartyResource is a generic representation of a resource, it is used by add-ons and plugins to add new resource types to the API.  It consists of one or more Versions of the api.
  class Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource
    getter api_version : String = "extensions/v1beta1"
    getter kind : String = "ThirdPartyResource"
    # Description is the description of this object.
    property description : String | Nil

    # Standard object metadata
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Versions are versions for this third party object
    property versions : Array(Kubernetes::Apis::Extensions::V1beta1::APIVersion) | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ThirdPartyResource", key: "kind", setter: false},
      description: {type: String, nilable: true, key: "description", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      versions:    {type: Array(Kubernetes::Apis::Extensions::V1beta1::APIVersion), nilable: true, key: "versions", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ThirdPartyResource", key: "kind", setter: false},
      description: {type: String, nilable: true, key: "description", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      versions:    {type: Array(Kubernetes::Apis::Extensions::V1beta1::APIVersion), nilable: true, key: "versions", getter: false, setter: false},
    }, true)

    def initialize(*, @description : String | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @versions : Array | Nil = nil)
    end

    # create a ThirdPartyResource
    def create(context : String | Nil = nil)
    end

    # list or watch objects of kind ThirdPartyResource
    def self.list(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of ThirdPartyResource
    def self.delete(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # read the specified ThirdPartyResource
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil)
    end

    # replace the specified ThirdPartyResource
    def replace(context : String | Nil = nil)
    end

    # partially update the specified ThirdPartyResource
    def patch(context : String | Nil = nil)
    end

    # delete a ThirdPartyResource
    def delete(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end
  end

  module Resources::Extensions::V1beta1
    alias ThirdPartyResource = ::Pyrite::Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource
  end
end
