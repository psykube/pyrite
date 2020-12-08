# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  class Api::Autoscaling::V2beta2::ExternalMetricSource
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
