# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ReplicaSetStatus represents the current status of a ReplicaSet.
  class Api::Apps::V1beta2::ReplicaSetStatus
    # The number of available replicas (ready for at least minReadySeconds) for this replica set.
    property available_replicas : Int32 | Nil

    # Represents the latest available observations of a replica set's current state.
    property conditions : Array(Api::Apps::V1beta2::ReplicaSetCondition) | Nil

    # The number of pods that have labels matching the labels of the pod template of the replicaset.
    property fully_labeled_replicas : Int32 | Nil

    # ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
    property observed_generation : Int32 | Nil

    # The number of ready replicas for this replica set.
    property ready_replicas : Int32 | Nil

    # Replicas is the most recently oberved number of replicas. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller)
    property replicas : Int32

    ::YAML.mapping({
      available_replicas:     {type: Int32, nilable: true, key: "availableReplicas", getter: false, setter: false},
      conditions:             {type: Array(Api::Apps::V1beta2::ReplicaSetCondition), nilable: true, key: "conditions", getter: false, setter: false},
      fully_labeled_replicas: {type: Int32, nilable: true, key: "fullyLabeledReplicas", getter: false, setter: false},
      observed_generation:    {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
      ready_replicas:         {type: Int32, nilable: true, key: "readyReplicas", getter: false, setter: false},
      replicas:               {type: Int32, nilable: false, key: "replicas", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      available_replicas:     {type: Int32, nilable: true, key: "availableReplicas", getter: false, setter: false},
      conditions:             {type: Array(Api::Apps::V1beta2::ReplicaSetCondition), nilable: true, key: "conditions", getter: false, setter: false},
      fully_labeled_replicas: {type: Int32, nilable: true, key: "fullyLabeledReplicas", getter: false, setter: false},
      observed_generation:    {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
      ready_replicas:         {type: Int32, nilable: true, key: "readyReplicas", getter: false, setter: false},
      replicas:               {type: Int32, nilable: false, key: "replicas", getter: false, setter: false},
    }, true)

    def initialize(*, @replicas : Int32, @available_replicas : Int32 | Nil = nil, @conditions : Array | Nil = nil, @fully_labeled_replicas : Int32 | Nil = nil, @observed_generation : Int32 | Nil = nil, @ready_replicas : Int32 | Nil = nil)
    end
  end
end
