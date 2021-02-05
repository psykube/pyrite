# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DeploymentStatus is the most recently observed status of the Deployment.
  class Kubernetes::Apis::Extensions::V1beta1::DeploymentStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
    @[::JSON::Field(key: "availableReplicas")]
    @[::YAML::Field(key: "availableReplicas")]
    property available_replicas : Int32 | Nil

    # Represents the latest available observations of a deployment's current state.
    @[::JSON::Field(key: "conditions")]
    @[::YAML::Field(key: "conditions")]
    property conditions : Array(Kubernetes::Apis::Extensions::V1beta1::DeploymentCondition) | Nil

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

    # Total number of unavailable pods targeted by this deployment.
    @[::JSON::Field(key: "unavailableReplicas")]
    @[::YAML::Field(key: "unavailableReplicas")]
    property unavailable_replicas : Int32 | Nil

    # Total number of non-terminated pods targeted by this deployment that have the desired template spec.
    @[::JSON::Field(key: "updatedReplicas")]
    @[::YAML::Field(key: "updatedReplicas")]
    property updated_replicas : Int32 | Nil

    def initialize(*, @available_replicas : Int32 | Nil = nil, @conditions : Array | Nil = nil, @observed_generation : Int32 | Nil = nil, @ready_replicas : Int32 | Nil = nil, @replicas : Int32 | Nil = nil, @unavailable_replicas : Int32 | Nil = nil, @updated_replicas : Int32 | Nil = nil)
    end
  end
end
