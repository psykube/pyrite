# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
  class Api::Policy::V1beta1::PodDisruptionBudget
    getter api_version : String = "io/k8s/api/policy/v1beta1"
    getter kind : String = "PodDisruptionBudget"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of the PodDisruptionBudget.
    property spec : Api::Policy::V1beta1::PodDisruptionBudgetSpec | Nil

    # Most recently observed status of the PodDisruptionBudget.
    property status : Api::Policy::V1beta1::PodDisruptionBudgetStatus | Nil

    YAML.mapping({
      api_version: {type: String, default: "io/k8s/api/policy/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "PodDisruptionBudget", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Policy::V1beta1::PodDisruptionBudgetSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Policy::V1beta1::PodDisruptionBudgetStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "io/k8s/api/policy/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "PodDisruptionBudget", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Policy::V1beta1::PodDisruptionBudgetSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Policy::V1beta1::PodDisruptionBudgetStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Policy::V1beta1::PodDisruptionBudgetSpec | Nil = nil, @status : Api::Policy::V1beta1::PodDisruptionBudgetStatus | Nil = nil)
    end
  end

  module Resources::Io::K8s::Api::Policy::V1beta1
    alias PodDisruptionBudget = Api::Policy::V1beta1::PodDisruptionBudget
  end
end
