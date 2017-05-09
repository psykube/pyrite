# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # Binding ties one object to another. For example, a pod is bound to a node by a scheduler.
  class Definitions::Kubernetes::Api::V1::Binding
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # The target object that you want to bind to the standard object.
    property target : Kubernetes::Api::V1::ObjectReference

    YAML.mapping({
      api_version: {type: String, default: "Binding", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      target:      {type: Kubernetes::Api::V1::ObjectReference, nilable: false, key: target, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "Binding", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      target:      {type: Kubernetes::Api::V1::ObjectReference, nilable: false, key: target, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @target : Kubernetes::Api::V1::ObjectReference = nil)
      @api_version = "v1"
      @kind = "Binding"
    end
  end

  module Resources::V1
    include Resource
    alias Binding = Definitions::Kubernetes::Api::V1::Binding
  end
end
