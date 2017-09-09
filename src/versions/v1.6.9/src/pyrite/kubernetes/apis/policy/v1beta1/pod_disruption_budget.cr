# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
  class Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudget
    getter api_version : String = "policy/v1beta1"
    getter kind : String = "PodDisruptionBudget"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of the PodDisruptionBudget.
    property spec : Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetSpec | Nil

    # Most recently observed status of the PodDisruptionBudget.
    property status : Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetStatus | Nil

    YAML.mapping({
      api_version: {type: String, default: "policy/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "PodDisruptionBudget", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      spec:        {type: Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetSpec, nilable: true, key: "spec"},
      status:      {type: Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetStatus, nilable: true, key: "status"},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "policy/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "PodDisruptionBudget", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      spec:        {type: Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetSpec, nilable: true, key: "spec"},
      status:      {type: Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetStatus, nilable: true, key: "status"},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetSpec | Nil = nil, @status : Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetStatus | Nil = nil)
    end
  end

  module Resources::Policy::V1beta1
    alias PodDisruptionBudget = Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudget
  end
end
