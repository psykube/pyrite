# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  # ReplicaSetList is a collection of ReplicaSets.
  class Definitions::Kubernetes::Apis::Extensions::V1beta1::ReplicaSetList
    # List of ReplicaSets. More info: [http://kubernetes.io/docs/user-guide/replication-controller](http://kubernetes.io/docs/user-guide/replication-controller)
    property items : Array(Kubernetes::Apis::Extensions::V1beta1::ReplicaSet)

    # Standard list metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds)
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "ReplicaSetList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Extensions::V1beta1::ReplicaSet), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "ReplicaSetList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Extensions::V1beta1::ReplicaSet), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta = nil)
      @api_version = "extensions/v1beta1"
      @kind = "ReplicaSetList"
    end
  end

  module Resources::Extensions::V1beta1
    include Resource
    alias ReplicaSetList = Definitions::Kubernetes::Apis::Extensions::V1beta1::ReplicaSetList
  end
end
