# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DeploymentStatus is the most recently observed status of the Deployment.
  class Api::Apps::V1beta1::DeploymentStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
    @[::JSON::Field(key: "availableReplicas")]
    @[::YAML::Field(key: "availableReplicas")]
    property available_replicas : Int32 | Nil

    # Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
    @[::JSON::Field(key: "collisionCount")]
    @[::YAML::Field(key: "collisionCount")]
    property collision_count : Int32 | Nil

    # Represents the latest available observations of a deployment's current state.
    @[::JSON::Field(key: "conditions")]
    @[::YAML::Field(key: "conditions")]
    property conditions : Array(Api::Apps::V1beta1::DeploymentCondition) | Nil

    # The generation observed by the deployment controller.
    @[::JSON::Field(key: "observedGeneration")]
    @[::YAML::Field(key: "observedGeneration")]
    property observed_generation : Int32 | Nil

    # Total number of ready pods targeted by this deployment.
    @[::JSON::Field(key: "readyReplicas")]
    @[::YAML::Field(key: "readyReplicas")]
    property ready_replicas : Int32 | Nil

    # Total number of non-terminated pods targeted by this deployment (their labels match the selector).
    @[::JSON::Field(key: "replicas")]
    @[::YAML::Field(key: "replicas")]
    property replicas : Int32 | Nil

    # Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
    @[::JSON::Field(key: "unavailableReplicas")]
    @[::YAML::Field(key: "unavailableReplicas")]
    property unavailable_replicas : Int32 | Nil

    # Total number of non-terminated pods targeted by this deployment that have the desired template spec.
    @[::JSON::Field(key: "updatedReplicas")]
    @[::YAML::Field(key: "updatedReplicas")]
    property updated_replicas : Int32 | Nil

    def initialize(*, @available_replicas : Int32 | Nil = nil, @collision_count : Int32 | Nil = nil, @conditions : Array | Nil = nil, @observed_generation : Int32 | Nil = nil, @ready_replicas : Int32 | Nil = nil, @replicas : Int32 | Nil = nil, @unavailable_replicas : Int32 | Nil = nil, @updated_replicas : Int32 | Nil = nil)
    end
  end
end
