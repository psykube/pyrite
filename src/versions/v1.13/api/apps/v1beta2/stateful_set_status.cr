# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # StatefulSetStatus represents the current state of a StatefulSet.
  class Api::Apps::V1beta2::StatefulSetStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
    @[::JSON::Field(key: "collisionCount")]
    @[::YAML::Field(key: "collisionCount")]
    property collision_count : Int32 | Nil

    # Represents the latest available observations of a statefulset's current state.
    @[::JSON::Field(key: "conditions")]
    @[::YAML::Field(key: "conditions")]
    property conditions : Array(Api::Apps::V1beta2::StatefulSetCondition) | Nil

    # currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
    @[::JSON::Field(key: "currentReplicas")]
    @[::YAML::Field(key: "currentReplicas")]
    property current_replicas : Int32 | Nil

    # currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
    @[::JSON::Field(key: "currentRevision")]
    @[::YAML::Field(key: "currentRevision")]
    property current_revision : String | Nil

    # observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
    @[::JSON::Field(key: "observedGeneration")]
    @[::YAML::Field(key: "observedGeneration")]
    property observed_generation : Int32 | Nil

    # readyReplicas is the number of Pods created by the StatefulSet controller that have a Ready Condition.
    @[::JSON::Field(key: "readyReplicas")]
    @[::YAML::Field(key: "readyReplicas")]
    property ready_replicas : Int32 | Nil

    # replicas is the number of Pods created by the StatefulSet controller.
    @[::JSON::Field(key: "replicas")]
    @[::YAML::Field(key: "replicas")]
    property replicas : Int32

    # updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
    @[::JSON::Field(key: "updateRevision")]
    @[::YAML::Field(key: "updateRevision")]
    property update_revision : String | Nil

    # updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
    @[::JSON::Field(key: "updatedReplicas")]
    @[::YAML::Field(key: "updatedReplicas")]
    property updated_replicas : Int32 | Nil

    def initialize(*, @collision_count : Int32 | Nil = nil, @conditions : Array | Nil = nil, @current_replicas : Int32 | Nil = nil, @current_revision : String | Nil = nil, @observed_generation : Int32 | Nil = nil, @ready_replicas : Int32 | Nil = nil, @replicas : Int32, @update_revision : String | Nil = nil, @updated_replicas : Int32 | Nil = nil)
    end
  end
end
