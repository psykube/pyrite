# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
  class Definitions::V1beta1::PodDisruptionBudget
    property metadata : V1::ObjectMeta

    # Specification of the desired behavior of the PodDisruptionBudget.
    property spec : V1beta1::PodDisruptionBudgetSpec

    # Most recently observed status of the PodDisruptionBudget.
    property status : V1beta1::PodDisruptionBudgetStatus

    YAML.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1beta1::PodDisruptionBudgetSpec, nilable: true, key: spec, getter: false, setter: false},
                  status:   {type: V1beta1::PodDisruptionBudgetStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    JSON.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1beta1::PodDisruptionBudgetSpec, nilable: true, key: spec, getter: false, setter: false},
                  status:   {type: V1beta1::PodDisruptionBudgetStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    def initialize(@metadata : V1::ObjectMeta = nil, @spec : V1beta1::PodDisruptionBudgetSpec = nil, @status : V1beta1::PodDisruptionBudgetStatus = nil)
    end
  end
end
