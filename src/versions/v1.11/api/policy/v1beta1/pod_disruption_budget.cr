# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
  class Api::Policy::V1beta1::PodDisruptionBudget
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "policy/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "PodDisruptionBudget"
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of the PodDisruptionBudget.
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Policy::V1beta1::PodDisruptionBudgetSpec | Nil

    # Most recently observed status of the PodDisruptionBudget.
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Policy::V1beta1::PodDisruptionBudgetStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Policy::V1beta1::PodDisruptionBudgetSpec | Nil = nil, @status : Api::Policy::V1beta1::PodDisruptionBudgetStatus | Nil = nil)
    end
  end

  module Resources::Policy::V1beta1
    alias PodDisruptionBudget = ::Pyrite::Api::Policy::V1beta1::PodDisruptionBudget
  end
end
