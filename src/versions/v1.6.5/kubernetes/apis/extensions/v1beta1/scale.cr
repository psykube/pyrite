# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # represents a scaling request for a resource.
  class Kubernetes::Apis::Extensions::V1beta1::Scale
    getter api_version : String = "extensions/v1beta1"
    getter kind : String = "Scale"
    # Standard object metadata; More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata.](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata.)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # defines the behavior of the scale. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.)
    property spec : Kubernetes::Apis::Extensions::V1beta1::ScaleSpec | Nil

    # current status of the scale. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status. Read-only.](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status. Read-only.)
    property status : Kubernetes::Apis::Extensions::V1beta1::ScaleStatus | Nil

    YAML.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Scale", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      spec:        {type: Kubernetes::Apis::Extensions::V1beta1::ScaleSpec, nilable: true, key: "spec"},
      status:      {type: Kubernetes::Apis::Extensions::V1beta1::ScaleStatus, nilable: true, key: "status"},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Scale", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      spec:        {type: Kubernetes::Apis::Extensions::V1beta1::ScaleSpec, nilable: true, key: "spec"},
      status:      {type: Kubernetes::Apis::Extensions::V1beta1::ScaleStatus, nilable: true, key: "status"},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Extensions::V1beta1::ScaleSpec | Nil = nil, @status : Kubernetes::Apis::Extensions::V1beta1::ScaleStatus | Nil = nil)
    end
  end

  module Resources::Extensions::V1beta1
    alias Scale = Kubernetes::Apis::Extensions::V1beta1::Scale
  end
end
