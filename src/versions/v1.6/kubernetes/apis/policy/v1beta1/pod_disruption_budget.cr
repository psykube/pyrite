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

    ::YAML.mapping({
      api_version: {type: String, default: "policy/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "PodDisruptionBudget", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "policy/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "PodDisruptionBudget", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetSpec | Nil = nil, @status : Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetStatus | Nil = nil)
    end

    # create a PodDisruptionBudget
    def create(context : String | Nil = nil)
    end

    # list or watch objects of kind PodDisruptionBudget
    def self.list(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of PodDisruptionBudget
    def self.delete(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified PodDisruptionBudget
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil, namespace : String = "default")
    end

    # replace the specified PodDisruptionBudget
    def replace(context : String | Nil = nil)
    end

    # partially update the specified PodDisruptionBudget
    def patch(context : String | Nil = nil)
    end

    # delete a PodDisruptionBudget
    def delete(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end

    # read status of the specified PodDisruptionBudget
    def self.read_status(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace status of the specified PodDisruptionBudget
    def replace_status(context : String | Nil = nil)
    end

    # partially update status of the specified PodDisruptionBudget
    def patch_status(context : String | Nil = nil)
    end
  end

  module Resources::Policy::V1beta1
    alias PodDisruptionBudget = ::Pyrite::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudget
  end
end
