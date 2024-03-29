# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # MetricSpec specifies how to scale based on a single metric (only `type` and one other matching field should be set at once).
  class Api::Autoscaling::V2beta2::MetricSpec < Kubernetes::Spec
    # external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
    @[::JSON::Field(key: "external")]
    @[::YAML::Field(key: "external")]
    property external : Api::Autoscaling::V2beta2::ExternalMetricSource | Nil

    # object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
    @[::JSON::Field(key: "object")]
    @[::YAML::Field(key: "object")]
    property object : Api::Autoscaling::V2beta2::ObjectMetricSource | Nil

    # pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
    @[::JSON::Field(key: "pods")]
    @[::YAML::Field(key: "pods")]
    property pods : Api::Autoscaling::V2beta2::PodsMetricSource | Nil

    # resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
    @[::JSON::Field(key: "resource")]
    @[::YAML::Field(key: "resource")]
    property resource : Api::Autoscaling::V2beta2::ResourceMetricSource | Nil

    # type is the type of metric source.  It should be one of "Object", "Pods" or "Resource", each mapping to a matching field in the object.
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String

    def initialize(*, @external : Api::Autoscaling::V2beta2::ExternalMetricSource | Nil = nil, @object : Api::Autoscaling::V2beta2::ObjectMetricSource | Nil = nil, @pods : Api::Autoscaling::V2beta2::PodsMetricSource | Nil = nil, @resource : Api::Autoscaling::V2beta2::ResourceMetricSource | Nil = nil, @type : String)
    end
  end
end
