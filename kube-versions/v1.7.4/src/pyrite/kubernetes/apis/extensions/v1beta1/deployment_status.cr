# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DeploymentStatus is the most recently observed status of the Deployment.
  class Kubernetes::Apis::Extensions::V1beta1::DeploymentStatus
    # Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
    property available_replicas : Int32 | Nil

    # Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
    property collision_count : Int32 | Nil

    # Represents the latest available observations of a deployment's current state.
    property conditions : Array(Kubernetes::Apis::Extensions::V1beta1::DeploymentCondition) | Nil

    # The generation observed by the deployment controller.
    property observed_generation : Int32 | Nil

    # Total number of ready pods targeted by this deployment.
    property ready_replicas : Int32 | Nil

    # Total number of non-terminated pods targeted by this deployment (their labels match the selector).
    property replicas : Int32 | Nil

    # Total number of unavailable pods targeted by this deployment.
    property unavailable_replicas : Int32 | Nil

    # Total number of non-terminated pods targeted by this deployment that have the desired template spec.
    property updated_replicas : Int32 | Nil

    YAML.mapping({
      available_replicas:   {type: Int32, nilable: true, key: "availableReplicas"},
      collision_count:      {type: Int32, nilable: true, key: "collisionCount"},
      conditions:           {type: Array(Kubernetes::Apis::Extensions::V1beta1::DeploymentCondition), nilable: true, key: "conditions"},
      observed_generation:  {type: Int32, nilable: true, key: "observedGeneration"},
      ready_replicas:       {type: Int32, nilable: true, key: "readyReplicas"},
      replicas:             {type: Int32, nilable: true, key: "replicas"},
      unavailable_replicas: {type: Int32, nilable: true, key: "unavailableReplicas"},
      updated_replicas:     {type: Int32, nilable: true, key: "updatedReplicas"},
    }, true)

    JSON.mapping({
      available_replicas:   {type: Int32, nilable: true, key: "availableReplicas"},
      collision_count:      {type: Int32, nilable: true, key: "collisionCount"},
      conditions:           {type: Array(Kubernetes::Apis::Extensions::V1beta1::DeploymentCondition), nilable: true, key: "conditions"},
      observed_generation:  {type: Int32, nilable: true, key: "observedGeneration"},
      ready_replicas:       {type: Int32, nilable: true, key: "readyReplicas"},
      replicas:             {type: Int32, nilable: true, key: "replicas"},
      unavailable_replicas: {type: Int32, nilable: true, key: "unavailableReplicas"},
      updated_replicas:     {type: Int32, nilable: true, key: "updatedReplicas"},
    }, true)

    def initialize(*, @available_replicas : Int32 | Nil = nil, @collision_count : Int32 | Nil = nil, @conditions : Array | Nil = nil, @observed_generation : Int32 | Nil = nil, @ready_replicas : Int32 | Nil = nil, @replicas : Int32 | Nil = nil, @unavailable_replicas : Int32 | Nil = nil, @updated_replicas : Int32 | Nil = nil)
    end
  end
end
