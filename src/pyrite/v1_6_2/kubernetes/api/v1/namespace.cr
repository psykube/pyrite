# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # Namespace provides a scope for Names. Use of multiple namespaces is optional.
  class Definitions::Kubernetes::Api::V1::Namespace
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # Spec defines the behavior of the Namespace. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : Kubernetes::Api::V1::NamespaceSpec

    # Status describes the current status of a Namespace. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : Kubernetes::Api::V1::NamespaceStatus

    YAML.mapping({
      api_version: {type: String, default: "Namespace", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Api::V1::NamespaceSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Api::V1::NamespaceStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "Namespace", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Api::V1::NamespaceSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Api::V1::NamespaceStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : Kubernetes::Api::V1::NamespaceSpec = nil, @status : Kubernetes::Api::V1::NamespaceStatus = nil)
      @api_version = "v1"
      @kind = "Namespace"
    end
  end

  module Resources::V1
    include Resource
    alias Namespace = Definitions::Kubernetes::Api::V1::Namespace
  end
end
