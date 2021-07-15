# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  class Api::Autoscaling::V2beta2::ExternalMetricSource < Kubernetes::Spec
    # metric identifies the target metric by name and selector
    @[::JSON::Field(key: "metric")]
    @[::YAML::Field(key: "metric")]
    property metric : Api::Autoscaling::V2beta2::MetricIdentifier

    # target specifies the target value for the given metric
    @[::JSON::Field(key: "target")]
    @[::YAML::Field(key: "target")]
    property target : Api::Autoscaling::V2beta2::MetricTarget

    def initialize(*, @metric : Api::Autoscaling::V2beta2::MetricIdentifier, @target : Api::Autoscaling::V2beta2::MetricTarget)
    end
  end
end
