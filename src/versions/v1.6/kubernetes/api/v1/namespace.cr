# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Namespace provides a scope for Names. Use of multiple namespaces is optional.
  class Kubernetes::Api::V1::Namespace
    getter api_version : String = "v1"
    getter kind : String = "Namespace"
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec defines the behavior of the Namespace. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : Kubernetes::Api::V1::NamespaceSpec | Nil

    # Status describes the current status of a Namespace. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : Kubernetes::Api::V1::NamespaceStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Namespace", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Api::V1::NamespaceSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Api::V1::NamespaceStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Namespace", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Api::V1::NamespaceSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Api::V1::NamespaceStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Api::V1::NamespaceSpec | Nil = nil, @status : Kubernetes::Api::V1::NamespaceStatus | Nil = nil)
    end

    # create a Namespace
    def create(context : String | Nil = nil)
    end

    # list or watch objects of kind Namespace
    def self.list(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # read the specified Namespace
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil)
    end

    # replace the specified Namespace
    def replace(context : String | Nil = nil)
    end

    # partially update the specified Namespace
    def patch(context : String | Nil = nil)
    end

    # delete a Namespace
    def delete(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end

    # replace finalize of the specified Namespace
    def replace_finalize(context : String | Nil = nil)
    end

    # read status of the specified Namespace
    def self.read_status(name : String, context : String | Nil = nil)
    end

    # replace status of the specified Namespace
    def replace_status(context : String | Nil = nil)
    end

    # partially update status of the specified Namespace
    def patch_status(context : String | Nil = nil)
    end
  end

  module Resources::V1
    alias Namespace = ::Pyrite::Kubernetes::Api::V1::Namespace
  end
end
