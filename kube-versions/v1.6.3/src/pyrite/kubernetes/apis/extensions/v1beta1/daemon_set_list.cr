# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DaemonSetList is a collection of daemon sets.
  class Kubernetes::Apis::Extensions::V1beta1::DaemonSetList
    getter api_version : String = "extensions/v1beta1"
    getter kind : String = "List"
    # A list of daemon sets.
    property items : Array(Kubernetes::Apis::Extensions::V1beta1::DaemonSet)

    # Standard list metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    YAML.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Kubernetes::Apis::Extensions::V1beta1::DaemonSet), nilable: false, key: "items"},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata"},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Kubernetes::Apis::Extensions::V1beta1::DaemonSet), nilable: false, key: "items"},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata"},
    }, true)

    def initialize(*, @items : Array | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end
  end
end
