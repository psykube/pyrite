# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # StatefulSetStatus represents the current state of a StatefulSet.
  class Api::Apps::V1beta1::StatefulSetStatus
    # collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
    property collision_count : Int32 | Nil

    # currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
    property current_replicas : Int32 | Nil

    # currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
    property current_revision : String | Nil

    # observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
    property observed_generation : Int32 | Nil

    # readyReplicas is the number of Pods created by the StatefulSet controller that have a Ready Condition.
    property ready_replicas : Int32 | Nil

    # replicas is the number of Pods created by the StatefulSet controller.
    property replicas : Int32

    # updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
    property update_revision : String | Nil

    # updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
    property updated_replicas : Int32 | Nil

    ::YAML.mapping({
      collision_count:     {type: Int32, nilable: true, key: "collisionCount", getter: false, setter: false},
      current_replicas:    {type: Int32, nilable: true, key: "currentReplicas", getter: false, setter: false},
      current_revision:    {type: String, nilable: true, key: "currentRevision", getter: false, setter: false},
      observed_generation: {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
      ready_replicas:      {type: Int32, nilable: true, key: "readyReplicas", getter: false, setter: false},
      replicas:            {type: Int32, nilable: false, key: "replicas", getter: false, setter: false},
      update_revision:     {type: String, nilable: true, key: "updateRevision", getter: false, setter: false},
      updated_replicas:    {type: Int32, nilable: true, key: "updatedReplicas", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      collision_count:     {type: Int32, nilable: true, key: "collisionCount", getter: false, setter: false},
      current_replicas:    {type: Int32, nilable: true, key: "currentReplicas", getter: false, setter: false},
      current_revision:    {type: String, nilable: true, key: "currentRevision", getter: false, setter: false},
      observed_generation: {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
      ready_replicas:      {type: Int32, nilable: true, key: "readyReplicas", getter: false, setter: false},
      replicas:            {type: Int32, nilable: false, key: "replicas", getter: false, setter: false},
      update_revision:     {type: String, nilable: true, key: "updateRevision", getter: false, setter: false},
      updated_replicas:    {type: Int32, nilable: true, key: "updatedReplicas", getter: false, setter: false},
    }, true)

    def initialize(*, @replicas : Int32, @collision_count : Int32 | Nil = nil, @current_replicas : Int32 | Nil = nil, @current_revision : String | Nil = nil, @observed_generation : Int32 | Nil = nil, @ready_replicas : Int32 | Nil = nil, @update_revision : String | Nil = nil, @updated_replicas : Int32 | Nil = nil)
    end
  end
end
