# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # MetricStatus describes the last-read state of a single metric.
  class Kubernetes::Apis::Autoscaling::V2alpha1::MetricStatus
    # object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
    property object : Kubernetes::Apis::Autoscaling::V2alpha1::ObjectMetricStatus | Nil

    # pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
    property pods : Kubernetes::Apis::Autoscaling::V2alpha1::PodsMetricStatus | Nil

    # resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
    property resource : Kubernetes::Apis::Autoscaling::V2alpha1::ResourceMetricStatus | Nil

    # type is the type of metric source.  It will match one of the fields below.
    property type : String

    ::YAML.mapping({
      object:   {type: Kubernetes::Apis::Autoscaling::V2alpha1::ObjectMetricStatus, nilable: true, key: "object", getter: false, setter: false},
      pods:     {type: Kubernetes::Apis::Autoscaling::V2alpha1::PodsMetricStatus, nilable: true, key: "pods", getter: false, setter: false},
      resource: {type: Kubernetes::Apis::Autoscaling::V2alpha1::ResourceMetricStatus, nilable: true, key: "resource", getter: false, setter: false},
      type:     {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      object:   {type: Kubernetes::Apis::Autoscaling::V2alpha1::ObjectMetricStatus, nilable: true, key: "object", getter: false, setter: false},
      pods:     {type: Kubernetes::Apis::Autoscaling::V2alpha1::PodsMetricStatus, nilable: true, key: "pods", getter: false, setter: false},
      resource: {type: Kubernetes::Apis::Autoscaling::V2alpha1::ResourceMetricStatus, nilable: true, key: "resource", getter: false, setter: false},
      type:     {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @type : String, @object : Kubernetes::Apis::Autoscaling::V2alpha1::ObjectMetricStatus | Nil = nil, @pods : Kubernetes::Apis::Autoscaling::V2alpha1::PodsMetricStatus | Nil = nil, @resource : Kubernetes::Apis::Autoscaling::V2alpha1::ResourceMetricStatus | Nil = nil)
    end
  end
end
