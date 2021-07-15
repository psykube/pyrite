# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # StatefulSetStatus represents the current state of a StatefulSet.
  class Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus < Kubernetes::Spec
    # most recent generation observed by this StatefulSet.
    @[::JSON::Field(key: "observedGeneration")]
    @[::YAML::Field(key: "observedGeneration")]
    property observed_generation : Int32 | Nil

    # Replicas is the number of actual replicas.
    @[::JSON::Field(key: "replicas")]
    @[::YAML::Field(key: "replicas")]
    property replicas : Int32

    def initialize(*, @observed_generation : Int32 | Nil = nil, @replicas : Int32)
    end
  end
end
