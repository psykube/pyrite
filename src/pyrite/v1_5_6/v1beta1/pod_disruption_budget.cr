# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_6
  # PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
  class Definitions::V1beta1::PodDisruptionBudget
    property metadata : V1::ObjectMeta

    # Specification of the desired behavior of the PodDisruptionBudget.
    property spec : V1beta1::PodDisruptionBudgetSpec

    # Most recently observed status of the PodDisruptionBudget.
    property status : V1beta1::PodDisruptionBudgetStatus

    YAML.mapping({
      api_version: {type: String, default: "PodDisruptionBudget", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1beta1::PodDisruptionBudgetSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1beta1::PodDisruptionBudgetStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "PodDisruptionBudget", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1beta1::PodDisruptionBudgetSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1beta1::PodDisruptionBudgetStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : V1::ObjectMeta = nil, @spec : V1beta1::PodDisruptionBudgetSpec = nil, @status : V1beta1::PodDisruptionBudgetStatus = nil)
      @api_version = "v1beta1"
      @kind = "PodDisruptionBudget"
    end
  end

  module Resources::V1beta1
    include Resource
    alias PodDisruptionBudget = Definitions::V1beta1::PodDisruptionBudget
  end
end
