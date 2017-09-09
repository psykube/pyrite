# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # StatefulSetStatus represents the current state of a StatefulSet.
  class Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus
    # most recent generation observed by this StatefulSet.
    property observed_generation : Int32 | Nil

    # Replicas is the number of actual replicas.
    property replicas : Int32

    YAML.mapping({
      observed_generation: {type: Int32, nilable: true, key: "observedGeneration"},
      replicas:            {type: Int32, nilable: false, key: "replicas"},
    }, true)

    JSON.mapping({
      observed_generation: {type: Int32, nilable: true, key: "observedGeneration"},
      replicas:            {type: Int32, nilable: false, key: "replicas"},
    }, true)

    def initialize(*, @observed_generation : Int32 | Nil = nil, @replicas : Int32 | Nil = nil)
    end
  end
end
