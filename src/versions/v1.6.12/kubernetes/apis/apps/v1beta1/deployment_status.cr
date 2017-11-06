# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DeploymentStatus is the most recently observed status of the Deployment.
  class Kubernetes::Apis::Apps::V1beta1::DeploymentStatus
    # Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
    property available_replicas : Int32 | Nil

    # Represents the latest available observations of a deployment's current state.
    property conditions : Array(Kubernetes::Apis::Apps::V1beta1::DeploymentCondition) | Nil

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

    ::YAML.mapping({
      available_replicas:   {type: Int32, nilable: true, key: "availableReplicas", getter: false, setter: false},
      conditions:           {type: Array(Kubernetes::Apis::Apps::V1beta1::DeploymentCondition), nilable: true, key: "conditions", getter: false, setter: false},
      observed_generation:  {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
      ready_replicas:       {type: Int32, nilable: true, key: "readyReplicas", getter: false, setter: false},
      replicas:             {type: Int32, nilable: true, key: "replicas", getter: false, setter: false},
      unavailable_replicas: {type: Int32, nilable: true, key: "unavailableReplicas", getter: false, setter: false},
      updated_replicas:     {type: Int32, nilable: true, key: "updatedReplicas", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      available_replicas:   {type: Int32, nilable: true, key: "availableReplicas", getter: false, setter: false},
      conditions:           {type: Array(Kubernetes::Apis::Apps::V1beta1::DeploymentCondition), nilable: true, key: "conditions", getter: false, setter: false},
      observed_generation:  {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
      ready_replicas:       {type: Int32, nilable: true, key: "readyReplicas", getter: false, setter: false},
      replicas:             {type: Int32, nilable: true, key: "replicas", getter: false, setter: false},
      unavailable_replicas: {type: Int32, nilable: true, key: "unavailableReplicas", getter: false, setter: false},
      updated_replicas:     {type: Int32, nilable: true, key: "updatedReplicas", getter: false, setter: false},
    }, true)

    def initialize(*, @available_replicas : Int32 | Nil = nil, @conditions : Array | Nil = nil, @observed_generation : Int32 | Nil = nil, @ready_replicas : Int32 | Nil = nil, @replicas : Int32 | Nil = nil, @unavailable_replicas : Int32 | Nil = nil, @updated_replicas : Int32 | Nil = nil)
    end
  end
end
