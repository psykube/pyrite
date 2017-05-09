# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_3
  # ReplicaSet represents the configuration of a ReplicaSet.
  class Definitions::V1beta1::ReplicaSet
    # If the Labels of a ReplicaSet are empty, they are defaulted to be the same as the Pod(s) that the ReplicaSet manages. Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # Spec defines the specification of the desired behavior of the ReplicaSet. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : V1beta1::ReplicaSetSpec

    # Status is the most recently observed status of the ReplicaSet. This data may be out of date by some window of time. Populated by the system. Read-only. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : V1beta1::ReplicaSetStatus

    YAML.mapping({
      api_version: {type: String, default: "ReplicaSet", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1beta1::ReplicaSetSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1beta1::ReplicaSetStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "ReplicaSet", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1beta1::ReplicaSetSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1beta1::ReplicaSetStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : V1::ObjectMeta = nil, @spec : V1beta1::ReplicaSetSpec = nil, @status : V1beta1::ReplicaSetStatus = nil)
      @api_version = "v1beta1"
      @kind = "ReplicaSet"
    end
  end

  module Resources::V1beta1
    include Resource
    alias ReplicaSet = Definitions::V1beta1::ReplicaSet
  end
end