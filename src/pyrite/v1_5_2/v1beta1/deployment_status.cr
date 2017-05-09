# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_2
  # DeploymentStatus is the most recently observed status of the Deployment.
  class Definitions::V1beta1::DeploymentStatus
    # Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
    property available_replicas : Int32?

    # Represents the latest available observations of a deployment's current state.
    property conditions : Array(V1beta1::DeploymentCondition)?

    # The generation observed by the deployment controller.
    property observed_generation : Int32?

    # Total number of non-terminated pods targeted by this deployment (their labels match the selector).
    property replicas : Int32?

    # Total number of unavailable pods targeted by this deployment.
    property unavailable_replicas : Int32?

    # Total number of non-terminated pods targeted by this deployment that have the desired template spec.
    property updated_replicas : Int32?

    YAML.mapping({available_replicas:   {type: Int32, nilable: true, key: availableReplicas, getter: false, setter: false},
                  conditions:           {type: Array(V1beta1::DeploymentCondition), nilable: true, key: conditions, getter: false, setter: false},
                  observed_generation:  {type: Int32, nilable: true, key: observedGeneration, getter: false, setter: false},
                  replicas:             {type: Int32, nilable: true, key: replicas, getter: false, setter: false},
                  unavailable_replicas: {type: Int32, nilable: true, key: unavailableReplicas, getter: false, setter: false},
                  updated_replicas:     {type: Int32, nilable: true, key: updatedReplicas, getter: false, setter: false}}, true)

    JSON.mapping({available_replicas:   {type: Int32, nilable: true, key: availableReplicas, getter: false, setter: false},
                  conditions:           {type: Array(V1beta1::DeploymentCondition), nilable: true, key: conditions, getter: false, setter: false},
                  observed_generation:  {type: Int32, nilable: true, key: observedGeneration, getter: false, setter: false},
                  replicas:             {type: Int32, nilable: true, key: replicas, getter: false, setter: false},
                  unavailable_replicas: {type: Int32, nilable: true, key: unavailableReplicas, getter: false, setter: false},
                  updated_replicas:     {type: Int32, nilable: true, key: updatedReplicas, getter: false, setter: false}}, true)

    def initialize(@available_replicas : Int32? = nil, @conditions : Array? = nil, @observed_generation : Int32? = nil, @replicas : Int32? = nil, @unavailable_replicas : Int32? = nil, @updated_replicas : Int32? = nil)
    end
  end
end
