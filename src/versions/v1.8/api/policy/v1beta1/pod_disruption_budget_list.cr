# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodDisruptionBudgetList is a collection of PodDisruptionBudgets.
  class Api::Policy::V1beta1::PodDisruptionBudgetList
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "List"
    @[::JSON::Field(key: "items")]
    @[::YAML::Field(key: "items")]
    property items : Array(Api::Policy::V1beta1::PodDisruptionBudget)

    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end
  end
end
