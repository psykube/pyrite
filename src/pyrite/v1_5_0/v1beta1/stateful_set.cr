# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
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

    YAML.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1beta1::StatefulSetSpec, nilable: true, key: spec, getter: false, setter: false},
                  status:   {type: V1beta1::StatefulSetStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    JSON.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1beta1::StatefulSetSpec, nilable: true, key: spec, getter: false, setter: false},
                  status:   {type: V1beta1::StatefulSetStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    def initialize(@metadata : V1::ObjectMeta = nil, @spec : V1beta1::StatefulSetSpec = nil, @status : V1beta1::StatefulSetStatus = nil)
    end
  end
end
