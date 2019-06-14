# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
  class Api::Autoscaling::V2beta2::PodsMetricSource
    # metric identifies the target metric by name and selector
    property metric : Api::Autoscaling::V2beta2::MetricIdentifier

    # target specifies the target value for the given metric
    property target : Api::Autoscaling::V2beta2::MetricTarget

    ::YAML.mapping({
      metric: {type: Api::Autoscaling::V2beta2::MetricIdentifier, nilable: false, key: "metric", getter: false, setter: false},
      target: {type: Api::Autoscaling::V2beta2::MetricTarget, nilable: false, key: "target", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      metric: {type: Api::Autoscaling::V2beta2::MetricIdentifier, nilable: false, key: "metric", getter: false, setter: false},
      target: {type: Api::Autoscaling::V2beta2::MetricTarget, nilable: false, key: "target", getter: false, setter: false},
    }, true)

    def initialize(*, @metric : Api::Autoscaling::V2beta2::MetricIdentifier, @target : Api::Autoscaling::V2beta2::MetricTarget)
    end
  end
end
