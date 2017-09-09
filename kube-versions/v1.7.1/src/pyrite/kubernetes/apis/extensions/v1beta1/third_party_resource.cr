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

    YAML.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ThirdPartyResource", key: "kind", setter: false},
      description: {type: String, nilable: true, key: "description"},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      versions:    {type: Array(Kubernetes::Apis::Extensions::V1beta1::APIVersion), nilable: true, key: "versions"},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ThirdPartyResource", key: "kind", setter: false},
      description: {type: String, nilable: true, key: "description"},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      versions:    {type: Array(Kubernetes::Apis::Extensions::V1beta1::APIVersion), nilable: true, key: "versions"},
    }, true)

    def initialize(*, @description : String | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @versions : Array | Nil = nil)
    end
  end

  module Resources::Extensions::V1beta1
    alias ThirdPartyResource = Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource
  end
end
