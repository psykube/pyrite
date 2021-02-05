# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ReplicationControllerStatus represents the current status of a replication controller.
  class Kubernetes::Api::V1::ReplicationControllerStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The number of available replicas (ready for at least minReadySeconds) for this replication controller.
    @[::JSON::Field(key: "availableReplicas")]
    @[::YAML::Field(key: "availableReplicas")]
    property available_replicas : Int32 | Nil

    # Represents the latest available observations of a replication controller's current state.
    @[::JSON::Field(key: "conditions")]
    @[::YAML::Field(key: "conditions")]
    property conditions : Array(Kubernetes::Api::V1::ReplicationControllerCondition) | Nil

    # The number of pods that have labels matching the labels of the pod template of the replication controller.
    @[::JSON::Field(key: "fullyLabeledReplicas")]
    @[::YAML::Field(key: "fullyLabeledReplicas")]
    property fully_labeled_replicas : Int32 | Nil

    # ObservedGeneration reflects the generation of the most recently observed replication controller.
    @[::JSON::Field(key: "observedGeneration")]
    @[::YAML::Field(key: "observedGeneration")]
    property observed_generation : Int32 | Nil

    # The number of ready replicas for this replication controller.
    @[::JSON::Field(key: "readyReplicas")]
    @[::YAML::Field(key: "readyReplicas")]
    property ready_replicas : Int32 | Nil

    # Replicas is the most recently oberved number of replicas. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller)
    @[::JSON::Field(key: "replicas")]
    @[::YAML::Field(key: "replicas")]
    property replicas : Int32

    def initialize(*, @available_replicas : Int32 | Nil = nil, @conditions : Array | Nil = nil, @fully_labeled_replicas : Int32 | Nil = nil, @observed_generation : Int32 | Nil = nil, @ready_replicas : Int32 | Nil = nil, @replicas : Int32)
    end
  end
end
