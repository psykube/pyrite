# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # MetricSpec specifies how to scale based on a single metric (only `type` and one other matching field should be set at once).
  class Api::Autoscaling::V2beta1::MetricSpec
    # external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
    property external : Api::Autoscaling::V2beta1::ExternalMetricSource | Nil

    # object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
    property object : Api::Autoscaling::V2beta1::ObjectMetricSource | Nil

    # pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
    property pods : Api::Autoscaling::V2beta1::PodsMetricSource | Nil

    # resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
    property resource : Api::Autoscaling::V2beta1::ResourceMetricSource | Nil

    # type is the type of metric source.  It should be one of "Object", "Pods" or "Resource", each mapping to a matching field in the object.
    property type : String

    ::YAML.mapping({
      external: {type: Api::Autoscaling::V2beta1::ExternalMetricSource, nilable: true, key: "external", getter: false, setter: false},
      object:   {type: Api::Autoscaling::V2beta1::ObjectMetricSource, nilable: true, key: "object", getter: false, setter: false},
      pods:     {type: Api::Autoscaling::V2beta1::PodsMetricSource, nilable: true, key: "pods", getter: false, setter: false},
      resource: {type: Api::Autoscaling::V2beta1::ResourceMetricSource, nilable: true, key: "resource", getter: false, setter: false},
      type:     {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      external: {type: Api::Autoscaling::V2beta1::ExternalMetricSource, nilable: true, key: "external", getter: false, setter: false},
      object:   {type: Api::Autoscaling::V2beta1::ObjectMetricSource, nilable: true, key: "object", getter: false, setter: false},
      pods:     {type: Api::Autoscaling::V2beta1::PodsMetricSource, nilable: true, key: "pods", getter: false, setter: false},
      resource: {type: Api::Autoscaling::V2beta1::ResourceMetricSource, nilable: true, key: "resource", getter: false, setter: false},
      type:     {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @type : String, @external : Api::Autoscaling::V2beta1::ExternalMetricSource | Nil = nil, @object : Api::Autoscaling::V2beta1::ObjectMetricSource | Nil = nil, @pods : Api::Autoscaling::V2beta1::PodsMetricSource | Nil = nil, @resource : Api::Autoscaling::V2beta1::ResourceMetricSource | Nil = nil)
    end
  end
end
