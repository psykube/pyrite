# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodDisruptionBudgetSpec is a description of a PodDisruptionBudget.
  class Api::Policy::V1beta1::PodDisruptionBudgetSpec < Kubernetes::Spec
    # An eviction is allowed if at most "maxUnavailable" pods selected by "selector" are unavailable after the eviction, i.e. even in absence of the evicted pod. For example, one can prevent all voluntary evictions by specifying 0. This is a mutually exclusive setting with "minAvailable".
    @[::JSON::Field(key: "maxUnavailable")]
    @[::YAML::Field(key: "maxUnavailable")]
    property max_unavailable : Int32 | String | Nil

    # An eviction is allowed if at least "minAvailable" pods selected by "selector" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying "100%".
    @[::JSON::Field(key: "minAvailable")]
    @[::YAML::Field(key: "minAvailable")]
    property min_available : Int32 | String | Nil

    # Label query over pods whose evictions are managed by the disruption budget. A null selector selects no pods. An empty selector ({}) also selects no pods, which differs from standard behavior of selecting all pods. In [policy/v1, an empty selector will select all pods in the namespace.](policy/v1, an empty selector will select all pods in the namespace.)
    @[::JSON::Field(key: "selector")]
    @[::YAML::Field(key: "selector")]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    def initialize(*, @max_unavailable : Int32 | String | Nil = nil, @min_available : Int32 | String | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
