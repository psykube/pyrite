# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # MetricStatus describes the last-read state of a single metric.
  class Api::Autoscaling::V2beta2::MetricStatus < Kubernetes::Spec
    # container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
    @[::JSON::Field(key: "containerResource")]
    @[::YAML::Field(key: "containerResource")]
    property container_resource : Api::Autoscaling::V2beta2::ContainerResourceMetricStatus | Nil

    # external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
    @[::JSON::Field(key: "external")]
    @[::YAML::Field(key: "external")]
    property external : Api::Autoscaling::V2beta2::ExternalMetricStatus | Nil

    # object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
    @[::JSON::Field(key: "object")]
    @[::YAML::Field(key: "object")]
    property object : Api::Autoscaling::V2beta2::ObjectMetricStatus | Nil

    # pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
    @[::JSON::Field(key: "pods")]
    @[::YAML::Field(key: "pods")]
    property pods : Api::Autoscaling::V2beta2::PodsMetricStatus | Nil

    # resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
    @[::JSON::Field(key: "resource")]
    @[::YAML::Field(key: "resource")]
    property resource : Api::Autoscaling::V2beta2::ResourceMetricStatus | Nil

    # type is the type of metric source.  It will be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each corresponds to a matching field in the object. Note: "ContainerResource" type is available on when the feature-gate HPAContainerMetrics is enabled
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String

    def initialize(*, @container_resource : Api::Autoscaling::V2beta2::ContainerResourceMetricStatus | Nil = nil, @external : Api::Autoscaling::V2beta2::ExternalMetricStatus | Nil = nil, @object : Api::Autoscaling::V2beta2::ObjectMetricStatus | Nil = nil, @pods : Api::Autoscaling::V2beta2::PodsMetricStatus | Nil = nil, @resource : Api::Autoscaling::V2beta2::ResourceMetricStatus | Nil = nil, @type : String)
    end
  end
end
