# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  class Kubernetes::Apis::Autoscaling::V2alpha1::ObjectMetricSource
    # metricName is the name of the metric in question.
    property metric_name : String

    # target is the described Kubernetes object.
    property target : Kubernetes::Apis::Autoscaling::V2alpha1::CrossVersionObjectReference

    # targetValue is the target value of the metric (as a quantity).
    property target_value : Int32

    ::YAML.mapping({
      metric_name:  {type: String, nilable: false, key: "metricName", getter: false, setter: false},
      target:       {type: Kubernetes::Apis::Autoscaling::V2alpha1::CrossVersionObjectReference, nilable: false, key: "target", getter: false, setter: false},
      target_value: {type: Int32, nilable: false, key: "targetValue", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      metric_name:  {type: String, nilable: false, key: "metricName", getter: false, setter: false},
      target:       {type: Kubernetes::Apis::Autoscaling::V2alpha1::CrossVersionObjectReference, nilable: false, key: "target", getter: false, setter: false},
      target_value: {type: Int32, nilable: false, key: "targetValue", getter: false, setter: false},
    }, true)

    def initialize(*, @metric_name : String | Nil = nil, @target : Kubernetes::Apis::Autoscaling::V2alpha1::CrossVersionObjectReference | Nil = nil, @target_value : Int32 | Nil = nil)
    end
  end
end
