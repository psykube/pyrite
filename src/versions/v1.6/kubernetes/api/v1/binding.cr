# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Binding ties one object to another. For example, a pod is bound to a node by a scheduler.
  class Kubernetes::Api::V1::Binding
    getter api_version : String = "v1"
    getter kind : String = "Binding"
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # The target object that you want to bind to the standard object.
    property target : Kubernetes::Api::V1::ObjectReference

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Binding", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      target:      {type: Kubernetes::Api::V1::ObjectReference, nilable: false, key: "target", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Binding", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      target:      {type: Kubernetes::Api::V1::ObjectReference, nilable: false, key: "target", getter: false, setter: false},
    }, true)

    def initialize(*, @target : Kubernetes::Api::V1::ObjectReference, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end

    # create a Binding
    def create(context : String | Nil = nil)
    end

    # create binding of a Binding
    def create_binding(context : String | Nil = nil)
    end
  end

  module Resources::V1
    alias Binding = ::Pyrite::Kubernetes::Api::V1::Binding
  end
end
