# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodDisruptionBudgetSpec is a description of a PodDisruptionBudget.
  class Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # An eviction is allowed if at least "minAvailable" pods selected by "selector" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying "100%".
    @[JSON::Field(key: "minAvailable")]
    @[YAML::Field(key: "minAvailable")]
    property min_available : Int32 | String | Nil

    # Label query over pods whose evictions are managed by the disruption budget.
    @[JSON::Field(key: "selector")]
    @[YAML::Field(key: "selector")]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    def initialize(*, @min_available : Int32 | String | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
