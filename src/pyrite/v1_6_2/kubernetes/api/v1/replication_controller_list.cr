# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # ReplicationControllerList is a collection of replication controllers.
  class Definitions::Kubernetes::Api::V1::ReplicationControllerList
    # List of replication controllers. More info: [http://kubernetes.io/docs/user-guide/replication-controller](http://kubernetes.io/docs/user-guide/replication-controller)
    property items : Array(Kubernetes::Api::V1::ReplicationController)

    # Standard list metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds)
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "ReplicationControllerList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Api::V1::ReplicationController), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "ReplicationControllerList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Api::V1::ReplicationController), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta = nil)
      @api_version = "v1"
      @kind = "ReplicationControllerList"
    end
  end

  module Resources::V1
    include Resource
    alias ReplicationControllerList = Definitions::Kubernetes::Api::V1::ReplicationControllerList
  end
end
