# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ReplicaSetStatus represents the current status of a ReplicaSet.
  class Kubernetes::Apis::Extensions::V1beta1::ReplicaSetStatus
    # The number of available replicas (ready for at least minReadySeconds) for this replica set.
    property available_replicas : Int32 | Nil

    # Represents the latest available observations of a replica set's current state.
    property conditions : Array(Kubernetes::Apis::Extensions::V1beta1::ReplicaSetCondition) | Nil

    # The number of pods that have labels matching the labels of the pod template of the replicaset.
    property fully_labeled_replicas : Int32 | Nil

    # ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
    property observed_generation : Int32 | Nil

    # The number of ready replicas for this replica set.
    property ready_replicas : Int32 | Nil

    # Replicas is the most recently oberved number of replicas. More info: [http://kubernetes.io/docs/user-guide/replication-controller#what-is-a-replication-controller](http://kubernetes.io/docs/user-guide/replication-controller#what-is-a-replication-controller)
    property replicas : Int32

    YAML.mapping({
      available_replicas:     {type: Int32, nilable: true, key: "availableReplicas"},
      conditions:             {type: Array(Kubernetes::Apis::Extensions::V1beta1::ReplicaSetCondition), nilable: true, key: "conditions"},
      fully_labeled_replicas: {type: Int32, nilable: true, key: "fullyLabeledReplicas"},
      observed_generation:    {type: Int32, nilable: true, key: "observedGeneration"},
      ready_replicas:         {type: Int32, nilable: true, key: "readyReplicas"},
      replicas:               {type: Int32, nilable: false, key: "replicas"},
    }, true)

    JSON.mapping({
      available_replicas:     {type: Int32, nilable: true, key: "availableReplicas"},
      conditions:             {type: Array(Kubernetes::Apis::Extensions::V1beta1::ReplicaSetCondition), nilable: true, key: "conditions"},
      fully_labeled_replicas: {type: Int32, nilable: true, key: "fullyLabeledReplicas"},
      observed_generation:    {type: Int32, nilable: true, key: "observedGeneration"},
      ready_replicas:         {type: Int32, nilable: true, key: "readyReplicas"},
      replicas:               {type: Int32, nilable: false, key: "replicas"},
    }, true)

    def initialize(*, @available_replicas : Int32 | Nil = nil, @conditions : Array | Nil = nil, @fully_labeled_replicas : Int32 | Nil = nil, @observed_generation : Int32 | Nil = nil, @ready_replicas : Int32 | Nil = nil, @replicas : Int32 | Nil = nil)
    end
  end
end
