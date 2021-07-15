# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # MetricStatus describes the last-read state of a single metric.
  class Kubernetes::Apis::Autoscaling::V2alpha1::MetricStatus < Kubernetes::Spec
    # object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
    @[::JSON::Field(key: "object")]
    @[::YAML::Field(key: "object")]
    property object : Kubernetes::Apis::Autoscaling::V2alpha1::ObjectMetricStatus | Nil

    # pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
    @[::JSON::Field(key: "pods")]
    @[::YAML::Field(key: "pods")]
    property pods : Kubernetes::Apis::Autoscaling::V2alpha1::PodsMetricStatus | Nil

    # resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
    @[::JSON::Field(key: "resource")]
    @[::YAML::Field(key: "resource")]
    property resource : Kubernetes::Apis::Autoscaling::V2alpha1::ResourceMetricStatus | Nil

    # type is the type of metric source.  It will match one of the fields below.
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String

    def initialize(*, @object : Kubernetes::Apis::Autoscaling::V2alpha1::ObjectMetricStatus | Nil = nil, @pods : Kubernetes::Apis::Autoscaling::V2alpha1::PodsMetricStatus | Nil = nil, @resource : Kubernetes::Apis::Autoscaling::V2alpha1::ResourceMetricStatus | Nil = nil, @type : String)
    end
  end
end
