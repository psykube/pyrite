# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_2
  # StatefulSet represents a set of pods with consistent identities. Identities are defined as:
  #  - Network: A single stable DNS and hostname.
  #  - Storage: As many VolumeClaims as requested.
  # The StatefulSet guarantees that a given network identity will always map to the same storage identity.
  class Definitions::V1beta1::StatefulSet
    property metadata : V1::ObjectMeta

    # Spec defines the desired identities of pods in this set.
    property spec : V1beta1::StatefulSetSpec

    # Status is the current status of Pods in this StatefulSet. This data may be out of date by some window of time.
    property status : V1beta1::StatefulSetStatus

    YAML.mapping({
      api_version: {type: String, default: "StatefulSet", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1beta1::StatefulSetSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1beta1::StatefulSetStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "StatefulSet", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1beta1::StatefulSetSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1beta1::StatefulSetStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : V1::ObjectMeta = nil, @spec : V1beta1::StatefulSetSpec = nil, @status : V1beta1::StatefulSetStatus = nil)
      @api_version = "v1beta1"
      @kind = "StatefulSet"
    end
  end

  module Resources::V1beta1
    include Resource
    alias StatefulSet = Definitions::V1beta1::StatefulSet
  end
end
